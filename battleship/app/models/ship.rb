class Ship < ActiveRecord::Base
  belongs_to :board

  def sunk?
    self.num_hits_taken == self.length
  end
end