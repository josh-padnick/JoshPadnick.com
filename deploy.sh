#!/usr/bin/env bash
#
# Generate the static files and deploy them to GitHub Pages
#
# Usage: ./deploy.sh
#

set -e

# Defaults
readonly GENERATED_FILES_DIR="/tmp/josh-padnick"
readonly GENERATED_FILES_REPO_URL="https://github.com/josh-padnick/josh-padnick.github.io"

# Global constants computed from defaults
readonly GENERATED_FILES_REPO_LOCAL_DIR_NAME=$(cut -d'/' -f5 <<<"$GENERATED_FILES_REPO_URL")
readonly GENERATED_FILES_REPO_LOCAL_PATH="$GENERATED_FILES_DIR/$GENERATED_FILES_REPO_LOCAL_DIR_NAME"
readonly HUGO_REPO_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)" # Get the path of the directory that contains this very script

# Make a local directory and clone the given repo to it
function clone_generated_files_repo {
    local -r repo_url="$1"
    local -r path="$2"

    rm -Rf "$path"
    mkdir -p "$path"
    cd "$path"
    git clone "$repo_url"
}

# Generate the files from the Hugo repo into the generated files repo
function generate_files {
    local -r hugo_repo_path="$1"
    local -r generated_files_repo_path="$2"

    cd "$hugo_repo_path"
    hugo --destination "$generated_files_repo_path"
}

# Get the most recent git commit SHA from the Hugo repo
function get_last_hugo_git_commit {
    local -r hugo_repo_path="$1"

    cd "$hugo_repo_path"
    echo $(git rev-parse HEAD)
}

# Publish the generated files to the generated files repo
function publish_files {
    local -r generated_files_repo_path="$1"
    local -r last_hugo_git_commit="$2"

    cd "$generated_files_repo_path"
    git add -A
    git commit -m "Deploy generated files from https://github.com/josh-padnick/JoshPadnick.com/commit/$last_hugo_git_commit"
    git push
}

clone_generated_files_repo "$GENERATED_FILES_REPO_URL" "$GENERATED_FILES_DIR"

generate_files "$HUGO_REPO_PATH" "$GENERATED_FILES_REPO_LOCAL_PATH"

publish_files "$GENERATED_FILES_REPO_LOCAL_PATH" "$(get_last_hugo_git_commit "$HUGO_REPO_PATH")"