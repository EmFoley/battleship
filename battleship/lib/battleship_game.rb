class BattleshipGame
  attr_reader :board
  def initialize(ships:, hits:)
    @board = Matrix.build(10,10) {0}.to_a
    @ships = ships
    @hits = hits
    place_ships
    place_hits
  end

  # def put ships on the board based on coordinates
  def place_ships
    @ships.map(&:coordinates).flatten(1).each do |row, col|
      @board[row][col] = "s"
    end
  end

  def place_hits
    @hits.each do |hit|
      @board[hit.row_index][hit.col_index] = "X"
    end
  end
end