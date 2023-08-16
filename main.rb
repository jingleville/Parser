require 'bundler/setup' 
require 'active_record'

class Document < ActiveRecord::Base
  def initialize path
    @file = File.open(path)
    @file = Nokogiri::XML(@file)
    @options = options
  end

  private

  def options
    {}
  end
end
