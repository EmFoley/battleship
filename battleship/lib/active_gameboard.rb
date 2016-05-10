require 'matrix'
class ActiveGameboard
  attr_reader :board
  def initialize(ships:)
    # @board = Matrix.build(10,10) {0}.to_a
    @ships = ships
    # @shots = shots
    ship_locations
  end

  def call
    ship_locations = []
    @ships.map do |ship|
      ship_locations << {
        ship_id: ship.id,
        coordinates: ship.coordinates
      }
    end
    ship_locations
  end

  # def place_ships
  #   @ships.map(&:coordinates).flatten(1).each do |row, col|
  #     @board[row][col] = "s"
  #   end
  # end

  # def place_shots
  #   @shots.each do |shot|
  #     @board[shot.row_index][shot.col_index] = "X"
  #   end
  # end

end