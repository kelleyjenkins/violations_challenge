require 'minitest/autorun'
require 'minitest/pride'
require './lib/violations_file.rb'

class ViolationsFileTest < Minitest::Test


  def test_it_loads_file
    file = ViolationsFile.new

    assert file.violations.empty?

    file.load_file

    refute file.violations.empty?
  end

end
