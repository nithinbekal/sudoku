
require 'rspec'
require 'sudoku'

RSpec.configure do |config|
  config.color_enabled = true
  config.formatter     = 'documentation'
end

def load_sudoku_file(filename)
  puzzle_file = File.join(File.dirname(__FILE__), '..', 'puzzles', filename)
  File.new(puzzle_file).read.split("\n").join.split(//).map(&:to_i)
end