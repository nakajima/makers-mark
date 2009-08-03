require File.join(File.dirname(__FILE__), 'spec_helper')

describe 'MakersMark' do
  include TestHelp

  it 'generates HTML from markdown' do
    with_markdown <<-MD
    |# The title
    MD
    Nokogiri::HTML(result).at('h1').should_not be_nil
  end

  it 'syntax highlights' do
    with_markdown <<-MD
    |
    |@@@ ruby
    |    def code
    |      :foo
    |    end
    |@@@
    MD
    Nokogiri::HTML(result).at('.highlight.ruby').should_not be_nil
  end

  # this one is hard
  it 'allows custom lexer' do
    with_markdown <<-MD
    |@@@ js
    |  (function() { })();
    |@@@
    MD
    Nokogiri(result).at('.highlight.js').should_not be_nil
  end

  it "converts weird lexer characters to dash" do
    with_markdown <<-MD
    |@@@ html+erb
    |
    |    <html></html>
    |
    |@@@
    MD
    Nokogiri(result).at('.highlight.html-erb').should_not be_nil
  end

  it "allows nested markdown" do
    with_markdown <<-MD
    |    # This should be markdown
    MD
    Nokogiri(result).at('h1').should be_nil
    Nokogiri(result).at('pre').should_not be_nil
  end
end
