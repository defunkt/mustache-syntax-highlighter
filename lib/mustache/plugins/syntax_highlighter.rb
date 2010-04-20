require 'albino'

class Mustache
  module Plugins
    module SyntaxHighlighter
      LEXERS = %w( ruby js python scheme )

      LEXERS.each do |lexer|
        define_method "highlight_#{lexer}" do
          lambda { |text| Albino.new(text, lexer) }
        end
      end
    end
  end
end
