
require 'sudoku/version'
require 'sudoku/cell'
require 'sudoku/grid'
require 'sudoku/section'

module Sudoku
  def self.version_string
    "Sudoku version #{Sudoku::VERSION}"
  end
end

