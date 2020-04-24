class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @wants = current_user.want
    @cards = current_user.card
    @otherwants = @user.want
    @othercards = @user.card
  end

end
