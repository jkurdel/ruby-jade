require "ruby-jade/version"
require "execjs"

module Jade
  class << self
    def path
      File.expand_path '../ruby-jade/jade.min.js', __FILE__
    end

    def context
      @context ||= begin
        ExecJS.compile <<-JS
          var window = {};
          #{File.read(path)}
          var compile = function (template, options) {
            return window.jade.compile(template, options).toString();
          }
        JS
      end
    end

    def compile(template, options = {:client => true})
      context.call('compile', template, options)
    end
  end
end
