require 'mustache'
require 'mustache/plugins/syntax_highlighter'

class Dude < Mustache
  include Mustache::Plugins::SyntaxHighlighter

  def name
    "Chris"
  end
end

Dude.template = <<template
<html><head>
<link href="http://pygments.org/media/pygments_style.css" media="screen" rel="stylesheet" type="text/css" />
</head><body><div class="syntax">

{{# highlight_ruby}}
def hello
  puts "Hi {{name}}!"
end
{{/ highlight_ruby}}

</div></body></html>
template

puts Dude.render
