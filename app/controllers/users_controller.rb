class UsersController < ApplicationController

  def show
    @wants = current_user.want
    @cards = current_user.card
  end

end
