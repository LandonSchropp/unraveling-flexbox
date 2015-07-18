# Unraveling Flexbox

This repository contains the code examples from the book [Unraveling Flexbox](https://unravelingflexbox.com/) by Landon Schropp.

## Running the examples

The examples are built using [Middleman](https://middlemanapp.com/), an static site generator. To run the examples, install the Middleman gem with `gem install middleman`. Then, change to the directory of this repository and run `middleman` in your console.

## Organization

This project is organized into the following directories:

* `source`: Contains all of the source code for the examples.
* `source/layouts`: Contains the main layout file in which all of the examples are included.
* `source/pages`: The pages that make the examples. This directory is further divided up into chapter directories.
* `source/stylesheets`: The stylesheets for the examples. The organization of the directory is the same as `source-pages`. The styles for each example contain two files. The first, `<page_name>.css`, are the styles listed in the book. The second, `other_<page_name>_styles.css` contain the styles left out of the book.
* `source/images`: The images for the examples, organized in the same way as `source/pages`.

## Copyright

© 2011 Landon Schropp LLC All Rights Reserved
