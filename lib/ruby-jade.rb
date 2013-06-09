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
          var jade = window.jade;
          var compile = function (template, options) {
            return jade.compile(template, options).toString();
          }
          var render = function (template, options, locals) {
            return jade.compile(template, options)(locals, {}, {}, {}, {});
          }
        JS
      end
    end

    def compile(template, options = {})
      options = {:client => true, :compileDebug => false}.merge(options)
      context.call('compile', template, options)
    end

    def render(template, options = {}, locals = {})
      options = {:client => true, :compileDebug => false}.merge(options)
      context.call('render', template, options, locals)
    end

  end
end
