# Makers Mark(down)

Generate syntax highlighted HTML using [Markdown](http://daringfireball.net/projects/markdown/)/[Lighthouse](http://lighthouseapp.com/)
conventions. Good for stuff.

## Usage

Write something in [Markdown](http://daringfireball.net/projects/markdown/). Use the `mark` command to generate
the HTML:

    $ mark some-file.md

### Syntax Highlighting

If you've used [Lighthouse](http://lighthouseapp.com/), you probably know how to post snippets
of code. This lets you do that as well:

    # Some interesting code
    
    Here it is:

    @@@ ruby
        def foo
          :bar
        end
    @@@

## Todo

* The highlighting code is still a bit sketchy
* Ability to insert into a layout
* Other stuff...

## Credits

* Ryan Tomayko for RDiscount
* John Gruber for Markdown
* Chris Wanstrath for albino.rb
* Lighthouse for code snippet simplicity

<pre>
(c) Copyright 2009 Pat Nakajima

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:
 
The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.
 
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.
</pre>