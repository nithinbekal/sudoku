
require 'spec_helper'

describe Grid do
  
  context 'initialized without a source' do
  
    before do
      @g = Grid.new
    end
    
    it 'should have 81 cells' do
      @g.cells.length.should == 81
    end
    
    it 'should put 0 in all cells' do
      @g.cells.map(&:value).should == [0] * 81
    end
    
  end
  
  context 'initialized with an array as source' do
    
    it 'should initialize cells with the array values' do
      @g = Grid.new( (1..9).to_a * 9 )
      @g.cells.map(&:value).should == (1..9).to_a * 9
    end
    
    it 'should reject excess elements in the array' do
      @g = Grid.new( (1..9).to_a * 9  + [0])
      @g.cells.length.should == 81
      @g.cells.map(&:value).should == (1..9).to_a * 9
    end
    
    it 'should put 0 if array has less than 81 elements' do
      @g = Grid.new( (1..9).to_a * 8)
      @g.cells.length.should == 81
      @g.cells.map(&:value).should == (1..9).to_a * 8 + ([0] * 9)
    end
  
  end
  
end

