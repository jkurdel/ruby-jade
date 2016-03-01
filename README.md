This is a simple wrapper for version 1.11.0 of Jade. 

It lets you:

1. precompile Jade templates for use in the browser, although you also need to load
[this file](https://github.com/visionmedia/jade/blob/master/runtime.min.js)
on the client first.

  ``` ruby
  Jade.compile("html\n  div Hello!") # returns a JS function
  ```

1. render Jade templates to HTML.

  ``` ruby
  Jade.render("html\n  div Hello!") # returns a HTML string
  ```

