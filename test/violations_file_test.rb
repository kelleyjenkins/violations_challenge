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

  def test_it_can_count_violations
    file= ViolationsFile.new

    file.load_file

    assert_equal 545, file.violations.count
  end

  def test_it_can_find_earliest_violation_date
    file = ViolationsFile.new

    file.load_file
    result = file.date_of_earliest_violation

    assert_equal "1/3/12 0:00", result
  end

end
