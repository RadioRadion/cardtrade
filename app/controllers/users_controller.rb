class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @wants = current_user.want
    @cards = current_user.card
  end

end
