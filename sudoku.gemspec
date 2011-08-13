
$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require 'sudoku/version'

Gem::Specification.new do |s|
  s.name        = "sudoku"
  s.version     = Sudoku::VERSION
  s.authors     = ["Nithin Bekal"]
  s.email       = ["nithinbekal@gmail.com"]
  
  s.summary     = "Sudoku solver in Ruby"
  s.description = "Solves Sudoku puzzles. D'uh!"
  s.homepage    = "http://github.com/nithinbekal/sudoku"
  
  s.files       = Dir.glob("lib/**/*.rb")
  s.test_files  = Dir.glob("test/**/*.rb")
end

