require File.join(File.dirname(__FILE__), 'spec_helper')

describe 'MakersMark' do
  extend TestHelp

  it 'generates HTML from markdown' do
    with_markdown <<-MD
    |# The title
    MD
    Nokogiri::HTML(result).at('h1').should.not.be.nil
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
    Nokogiri::HTML(result).at('.highlight.ruby').should.not.be.nil
  end

  # this one is hard
  it 'allows custom lexer' do
    with_markdown <<-MD
    |@@@ js
    |  (function() { })();
    |@@@
    MD
    Nokogiri(result).at('.highlight.js').should.not.be.nil
  end
end
