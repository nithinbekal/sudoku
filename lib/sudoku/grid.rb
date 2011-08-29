
class Grid

  attr_accessor :cells, :solution, :sections
  
  def initialize(source=nil)
    initialize_cells_with source
    initialize_sections
  end
  
  def initialize_cells_with(source=nil)
    @cells = Array.new(81) { Cell.new(0, self) }
    source.each_with_index { |v, i| @cells[i] = Cell.new(v, self) if i < 81 } \
      unless source.nil?
    @solution = @cells.map(&:value)
  end
  
  def initialize_sections
    (0..8).each { |i| add_section(i) }
  end
  
  def add_section(position)
    section = Section.new(position, self)
  end
  
  def [](x,y)
    @cells[x + 9*y]
  end
  
end

