class Game < ActiveRecord::Base
  has_many :players
  has_many :boards

 def start_game
  @board_1 = Board.new(player: Player.find(1))
  @board_2 = Board.new(player: Player.find(2))
 end

 # def launch_missile(board:)
 #   row = rand(0..9)
 #   column = rand(0..9)
 #   target = board.board[row][column]
 # end

 # def hit?(target)
 #  if Ship.exists?(target) && !Ship.sunk?
 #    board[row][column] = "X"
 #    Ship.find(target).num_hits_taken +=1
 #  else
 #    false
 #  end
 # end


end