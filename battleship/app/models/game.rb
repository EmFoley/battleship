class Game < ActiveRecord::Base
  has_many :players
  has_many :boards

 def start_game
  boards = players.map do |player|
    player.boards.create game_id: self.id
  end
  boards.each do |board|
    5.times do 
      Ship.create_random(board: board)
    end
  end
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