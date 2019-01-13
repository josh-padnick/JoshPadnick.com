# JoshPadnick.com Website

This is the source code for my personal website, [JoshPadnick.com](http://JoshPadnick.com).

## Modifying the Site

This site is statically generated using [Hugo](https://gohugo.io/), Go-based static website generator. Here's how to
make edits to the site:

1. [Install Hugo](https://gohugo.io/getting-started/installing/#quick-install)

1. [Install git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

1. Git clone this repo:

    ```
    git clone https://github.com/josh-padnick/JoshPadnick.com
    cd JoshPadnick.com
    ```
    
1. Run Hugo in server mode. In this mode, Hugo will continually re-generate the site every time you make an update to any
   Hugo files. 
   
   ```
   hugo server -D
   ```    
   
   The `-D` tells Hugo to also render content pages that are in still in "draft" mode. A page is identified as being in
   draft mode if its [front matter](https://gohugo.io/content-management/front-matter/) includes a `draft` property set
   to `true`. If the `draft` property is absent or set to `false`, the page is considered ready to publish.
   
1. Now access the site at [http://localhost:1313](http://localhost:1313)!

### Tips

When you run `hugo server -D` Hugo, generates all the files *in memory*, which means it doesn't write them to disk. This
is great because it keeps your local file systems clean and is super-fast. But sometimes, you want to see all the files
that Hugo generates for debugging purposes. To do that, run:

```
hugo server --renderToDisk -D
```  

## Deploying the Site

Deployment works by generating the static website files, and `git push`ing them to https://github.com/josh-padnick/josh-padnick.github.io. That repo is configured with [GitHub Pages](https://pages.github.com/), so as soon as files are pushed to that repo, they're immediately available for viewing over the web!

To deploy, you'll need write access to https://pages.github.com/. Then run the deploy script:

```bash
./deploy.sh
```