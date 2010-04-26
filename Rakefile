
desc "List the available lexers"
task :lexers do
  $LOAD_PATH.unshift 'lib'
  require 'mustache/plugins/syntax_highlighter'

  lexers =
    Mustache::Plugins::SyntaxHighlighter.instance_methods.grep(/highlight/)
  puts 'Lexers:'
  puts lexers.map { |lexer| '  ' + lexer.sub('highlight_', '') }
end
