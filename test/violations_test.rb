require 'minitest/autorun'
require 'minitest/pride'
require 'csv'

class ViolationsTest < Minitest::Test

  def test_it_loads_file
    file = Violations.new

    assert file.violations.empty?

    file.load_file

    refute file.violations.empty?
  end

end
