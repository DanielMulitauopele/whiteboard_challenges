# Conway's Game of Life

# Rules:
# Any live cell with fewer than two live neighbours dies, as if by underpopulation.
# Any live cell with two or three live neighbours lives on to the next generation.
# Any live cell with more than three live neighbours dies, as if by overpopulation.
# Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.

def build_random_grid(cols, rows)
  a = Array.new(cols) { Array.new(rows, 0) }
  a.map! do |row|
    row.map! do |cell|
      cell = rand(0..1)
    end
  end
end

build_random_grid(10, 10)
