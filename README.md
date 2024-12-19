# sandpiper-toolchain.github.io

Materials for the sandpiper-toolchain [sandpiper-toolchain.github.io](https://sandpiper-toolchain.github.io) website.


## Hosting information

The site is set up to build the Jekyll contents in this repository (https://github.com/sandpiper-toolchain/sandpiper.io) via Github Actions, and deploy the built site to `gh-pages` branch for GitHub Pages hosting.

The site is served behind the alias `sandpiper.io`, but you can always hit the site directly at http://sandpiper-toolchain.github.io.


### Running a local instance

If you want to make changes, or contribute a blog post (see below), you will need to get a local version of the code running to test the website.

1. [install jekyll](https://jekyllrb.com/docs/installation/)
1. `git clone https://github.com/sandpiper-toolchain/sandpiper-toolchain.github.io && cd sandpiper-toolchain.github.io`
1. `bundle exec jekyll serve`
1. navigate in browser to `localhost:4000`. 

Please make sure the website builds and looks correct, after you add content.


## Site contents

The site is built using the [jekyll-theme-open-project](https://github.com/riboseinc/jekyll-theme-open-project) theme, generously provided by Ribose Inc.

The contents of the website are distributed across the following folders and files (as well as defaults pulled from the `jekyll-theme-open-project` gem).
Most information about the theme can be found at the theme homepage (https://github.com/riboseinc/jekyll-theme-open-project), but some is reproduced here for completeness.


## Adding a blog post

Posts are authored using typical Jekyll setup and should be placed under `_posts`.

A MWE for a post frontmatter is:

```yaml
---
layout: post
title:  "sandpiper-toolchain new blog post"
date:   2024-03-31
categories: website
---
```

According to the `jekyll-theme-open-project`, it is best to provide explicit hand-crafted post excerpts in the frontmatter, as automatically-generated excerpts may break postcard markup.
Use the following as an example for adding excerpts to frontmatter:

```yaml
excerpt: >-
  Post excerpt goes here, and supports inline HTML formatting only.
```

The theme also anticipates author information within the frontmatter (but we do not require it for sandpiper-toolchain), see the explanation of [how to add an author at the theme page](https://github.com/riboseinc/jekyll-theme-open-project#posts). 
You can also add a picture of yourself as the author if you like, if `use_picture` is set to "assets" in the frontmatter, author photo would be expected to reside under `assets/blog/authors/<author email>.jpg`.



## Adding a project

Add a folder with the project name, which must include an `index.md` file with the necessary frontmatter and nothing else. 
For example, the DeltaMetrics project `index.md` file includes: 

```yaml
---
title: sandplover
description: measuring rivers and deltas
featured: true
home_url: https://sandpiper-toolchain.github.io/sandplover
site:
  git_repo_url: "https://github.com/sandpiper-toolchain/sandplover"
---
```

The project repository will be `git pull`ed when the website is built, and it is *required* that the project repository include a `assets/symbol.svg` file.



## Changing the look

### Layouts 

To change the layout of a page, see where the layout comes from in `jekyll-theme-open-project`. 
If we have a version of that file in the repository, edit it here, otherwise, create it here.

### Colors / themes

Most color options are set in the `assets/css/style.scss` file.
The "sandpiper" text is set as an SVG in the `title.html` file.
The sandpiper logo is set as an SVG in `assets/symbol.svg`.
Be sure to create the correct type of SVG files [SVG guidelines](https://github.com/riboseinc/jekyll-theme-open-project#svg-guidelines).
