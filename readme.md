# Unraveling Flexbox

This repository contains the code examples from the book
[Unraveling Flexbox](https://unravelingflexbox.com/) by Landon Schropp.

The examples are built using [Middleman](https://middlemanapp.com/), a static site generator.

## Running the Examples with Docker

The easiest way to run the examples locally is with [Docker](https://www.docker.com/). To get a
development server up and running:

1. Clone this repo and change into its directory.
2. Download and install the *latest* version of [Docker](https://www.docker.com/products/docker) for your platform.
3. Run `docker-compose up`.

That's it! The first time the server runs, it may take a little while for the project's Docker
container to build. When it's done, you should be able to navigate to
[localhost:4567](http://localhost:4567) to view the application.

To make a change to an existing file, simply edit the file, save it, and refresh the browser.

## Running the Examples Locally

If you'd like, you can run the server outside of a virtual machine. To do so, you'll need to have a
full Ruby environment installed on your system.

1. Install [Bundler](http://bundler.io/).
2. Change to this project's directory and run `bundle install`.
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
