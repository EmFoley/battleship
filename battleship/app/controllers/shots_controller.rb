class ShotsController < ApplicationController
  respond_to :js, :json, :html

  def take_shot
    @shot = Shot.new
    if @shot.save
      @shot.generate_coordinates
      render :json => @shot
    end
  end



end