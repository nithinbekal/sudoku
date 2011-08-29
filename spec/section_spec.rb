
require 'spec_helper'

describe Section do
  
  context "when initialized" do
    
    before :each do
      @g = Grid.new(load_sudoku_file('simple.sudoku'))
      @s = Section.new(4, @g)
    end
    
    it "should initialize correct position" do
      @s.position.should == 4
    end
    
    it "should initialize grid correctly" do
      @s.grid.should == @g
    end
    
    it "should initialize correct set of cells" do
      @s.cells.map(&:value).should == [0,6,0,8,0,3,0,2,0]
    end
    
  end
  
end