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



end