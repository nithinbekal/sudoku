
class Cell
  attr_accessor :value, :grid, :possible_values, :section
  
  def initialize(value, grid)
    @value, @grid = value.to_i, grid
    @possible_values  = * ( value || (1..9) )
    @is_solved_value  = ( @value.to_i == 0 )
  end

  def original_value?
    ! @is_solved_value
  end
  
  def solved_value?
    @is_solved_value
  end

end

