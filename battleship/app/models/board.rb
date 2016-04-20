require 'matrix'
class Board < ActiveRecord::Base
  belongs_to :game
  belongs_to :player
  has_many :ships
  has_many :hits

  # attr_accessor :board
  # def initialize(player: nil)
  #   super
  #   @player = player
  #   @board = Matrix.build(10,10) {0}.to_a
  #   setup_board
  # end

  # def setup_board
  #   create_ships
  #   place_ships
  # end

  # def create_ships
  #   5.times do 
  #     Ship.create(board: self)
  #   end
  # end

  # def place_ships
  #   self.ships.each do |ship|
  #     if @starting_point == "row"
  #       @board[@row_start_index][@col_start_index..@col_start_index+2].map {|val| val = ship.id }
  #     else
  #       @board[@row_start_index..@row_start_index+2].map {|row| row[@col_start_index] = ship.id }
  #     end
  #   end
  #   @board
  # end

  # def place_by_row_or_column
  #   @starting_point = ["row", "column"].sample
  #   @row_start_index = rand(0..7)
  #   @col_start_index = rand(0..7)
  #   #LEFT AND RIGHT FIXES
  # end

end