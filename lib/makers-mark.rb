$LOAD_PATH << File.dirname(__FILE__)

require 'rubygems'
require 'rdiscount'
require 'nokogiri'
require 'albino'
require 'makers-mark/generator'

module MakersMark
  def self.generate(markdown)
    Generator.new(markdown).to_html
  end
end
