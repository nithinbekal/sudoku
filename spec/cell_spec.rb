
require 'spec_helper'

describe Cell do
  
  context 'initialized with a value' do
  
    before do
      @g = Grid.new
      @c = Cell.new(1, @g)
    end
  
    it 'belongs to parent grid' do
      @c.grid.should == @g
    end
    
    it 'contains the assigned value' do
      @c.value.should == 1
    end
    
    it 'has only one possible value' do
      @c.possible_values.should == [1]
    end

    it 'should be original value' do
      @c.should be_original_value
    end
    
    it 'should not be solved value' do
      @c.should_not be_solved_value
    end

  end

  context 'initialized without a value' do
  
    before do
      @g = Grid.new
      @c = Cell.new(nil, @grid)
    end
    
    it 'should have many possible values' do
      @c.possible_values.length.should > 1
      @c.possible_values.should == (1..9).to_a
    end
    
    it 'should not be an original value' do
      @c.should_not be_original_value
    end
    
    it 'should be a solved value' do
      @c.should 
    end
    
  end
  
end
