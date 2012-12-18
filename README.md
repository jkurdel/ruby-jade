This is a simple wrapper for version 0.27.7 of Jade. It lets you precompile
Jade templates for use in the browser, although you also need to load
[this file](https://github.com/visionmedia/jade/blob/master/runtime.min.js)
on the client first.

``` ruby
Jade.compile("html\n  div Hello!") # returns a JS function
```
