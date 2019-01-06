---
title: "Example Post for Images and Other Shortcodes"
date: 2019-01-06T00:00:00-07:00
draft: true
categories:
- example

---

This is an example of a Vimeo shortcode:

{{< vimeo 158393113>}}

This is an example of a slideshare shortcode:

{{< slideshare id="34267737" >}}

This is an example of an image. See [https://gohugo.io/content-management/image-processing/#image-processing-methods](https://gohugo.io/content-management/image-processing/#image-processing-methods) for additional info: 

{{< imgproc "images/violin.png" Fit "400x500" >}}This is an example of a caption{{</imgproc>}}
{{< imgproc "images/violin.png" Resize "500x" >}}This is an example of a caption{{</imgproc>}}
{{< imgproc "images/violin.png" Resize "x500" >}}This is an example of a caption{{</imgproc>}}
{{< imgproc "images/violin.png" Fill "400x500" >}}This is an example of a caption{{</imgproc>}}