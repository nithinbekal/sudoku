
require 'spec_helper'

describe Sudoku do
  it 'should return correct version string' do
    Sudoku.version_string.should == "Sudoku version #{Sudoku::VERSION}"
  end
end

