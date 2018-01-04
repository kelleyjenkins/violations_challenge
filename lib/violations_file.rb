require "csv"
require 'pry'
require './lib/violations'

class ViolationsFile
  attr_reader :violations 

  def initialize
    @violations = []
  end

  def load_file(file = "Violations-2012.csv")
    file = CSV.foreach file, headers: true, header_converters: :symbol do |row|
      @violations << Violations.new(row)
    end
  end


end
