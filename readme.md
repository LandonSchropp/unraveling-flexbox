# Unraveling Flexbox

This repository contains the code examples from the book
[Unraveling Flexbox](https://unravelingflexbox.com/) by Landon Schropp.

The examples are built using [Middleman](https://middlemanapp.com/), a static site generator.

## Running the Examples with Docker

To get started, you'll need to have [Git](https://git-scm.com/) and the *latest* version of
[Docker](https://www.docker.com/products/docker) installed.

Next, clone the application's repository and change into that directory.

``` sh
git clone https://github.com/LandonSchropp/unraveling_flexbox
cd unraveling_flexbox
```

Finally, start up the application.

``` sh
docker-compose up
```

That's it! The first time the server runs, it may take a little while for the project's Docker
container to build. When it's done, you should be able to navigate to
[localhost:4567](http://localhost:4567) to view the application.

To make a change to an existing file, simply edit the file, save it, and refresh your browser.

## Running the Examples Locally

If you'd like, you can run the server outside of a virtual machine. I'd only recommend doing this
if you're experienced with setting up a Ruby development environment.

1. Install Ruby and [Bundler](http://bundler.io/).
2. Run `bundle install` inside this project's directory.
3. Run `bundle exec middleman` to start up the project.

## Organization

This project is organized into the following directories:

* `source`: Contains all of the source code for the examples.
* `source/layouts`: Contains the main layout file in which all of the examples are included.
* `source/pages`: The pages that make the examples. This directory is further divided up into
  chapter directories.
* `source/stylesheets`: The stylesheets for the examples. The organization of the directory is the
  same as `source/pages`. The styles for each example contain two files. The first,
  `<page_name>.css`, are the styles listed in the book. The second, `other_<page_name>_styles.css`
  contain the styles left out of the book.
* `source/images`: The images for the examples, organized in the same way as `source/pages`.

## Copyright

© 2017 Landon Schropp LLC All Rights Reserved
