
class Section
  attr_accessor :position, :grid, :cells
  
  def initialize(position, grid=nil)
    @position, @grid = position, grid
    initialize_cells if grid
  end
  
  def initialize_cells
    @cells = []
    (0..8).each do |i|
      @cells << @grid.cells[(position/3)*27 + (position%3)*3 + (i/3)*9 + (i%3)]
    end
    @cells.each { |cell| cell.section = self }
  end
  
end



