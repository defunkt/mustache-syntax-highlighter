require 'mustache'
require 'mustache/plugins/syntax_highlighter'

class Dude < Mustache
  include Mustache::Plugins::SyntaxHighlighter

  def name
    "Chris"
  end
end

Dude.template = <<template
{{# highlight_ruby}}
def hello
  puts "Hi {{name}}!"
end
{{/ highlight_ruby}}
template

puts Dude.render
