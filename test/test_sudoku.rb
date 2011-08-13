
require 'test/unit'
require 'sudoku'

class TestSudoku < Test::Unit::TestCase
  def test_version_string
    assert_equal Sudoku.version_string, "Sudoku version #{Sudoku::VERSION}"
  end
end

