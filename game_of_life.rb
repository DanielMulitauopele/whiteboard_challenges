# Conway's Game of Life
#
# Rules:
# Any live cell with fewer than two live neighbours dies, as if by underpopulation.
# Any live cell with two or three live neighbours lives on to the next generation.
# Any live cell with more than three live neighbours dies, as if by overpopulation.
# Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.

def make_grid(columns,rows)
  board = Array.new(rows) { Array.new(columns, 0) }
end

def seed_grid(board)
  board.map! do |row|
    row.map! do |cell|
      cell = rand(0..1)
    end
  end
end

def count_neighbors(columns,rows)
  neighbors = 0

  current_gen = seed_grid(make_grid(columns, rows))
  new_gen = make_grid(columns, rows)

  current_gen.each_with_index do |row, row_i|
    row.each_with_index do |col, col_i|
      neighbors += 1 if current_gen[(row_i - 1) % 10][(col_i - 1) % 10] == 1
      neighbors += 1 if current_gen[(row_i - 1) % 10][col_i] == 1
      neighbors += 1 if current_gen[(row_i - 1) % 10][(col_i + 1) % 10] == 1
      neighbors += 1 if current_gen[row_i][(col_i - 1) % 10] == 1
      neighbors += 1 if current_gen[row_i][(col_i + 1) % 10] == 1
      neighbors += 1 if current_gen[(row_i + 1) % 10][(col_i - 1) % 10] == 1
      neighbors += 1 if current_gen[(row_i + 1) % 10][col_i] == 1
      neighbors += 1 if current_gen[(row_i + 1) % 10][(col_i + 1) % 10] == 1

      if current_gen[row_i][col_i] == 0
        new_gen[row_i][col_i] = 1 if neighbors == 3
      else
        new_gen[row_i][col_i] = 0 if neighbors < 2 || neighbors > 3
      end
    end
  end

  current_gen
  new_gen
end

count_neighbors(10,10)
