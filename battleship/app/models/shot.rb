class Shot < ActiveRecord::Base
  belongs_to :board

  def generate_coordinates
    self.row_index = rand(0..9)
    self.col_index = rand(0..9)
  end

end