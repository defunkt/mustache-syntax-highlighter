Mustache Syntax Highlighter
===========================

A plugin for [mustache.rb][mr] that lets you syntax highlight blocks
of code using sections.

For example, this template:

    I wrote some great code!

    {{# highlight_ruby}}
    def hello
      puts "Hi world!"
    end
    {{/ highlight_ruby}}

    Sweet. It works.

Will produce this text:

    I wrote some great code!

    <div class="highlight"><pre><span class="k">def</span> <span class="nf">hello</span>
      <span class="nb">puts</span> <span class="s2">&quot;Hi world!&quot;</span>
    <span class="k">end</span>
    </pre></div>

    Sweet. It works.

Just include the [Pygments css file][pc] and you're ready to roll.

If you want to use this in a `Mustache` view you can include it in
your subclass:

    class BlogPost < Mustache
      include Mustache::Plugins::SyntaxHighlighter

      def name
        "Bobs"
      end
    end

The code you want to highlight will be rendered before being passed to
the highlighter.

So this:

    {{# highlight_ruby}}
    def hello
      puts "Hi {{name}}!"
    end
    {{/ highlight_ruby}}

Becomes this:

    <div class="highlight"><pre><span class="k">def</span> <span class="nf">hello</span>
      <span class="nb">puts</span> <span class="s2">&quot;Hi Bobs!&quot;</span>
    <span class="k">end</span>
    </pre></div>

Note the `Hi Bobs!`

## Dependencies

* Pygments
* Mustache 0.11.0

[mr]: http://github.com/defunkt/mustache
[pc]: http://pygments.org/media/pygments_style.css
