class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  before_action :check_signed_in

  def home
  end

  def landing
  end
end

def check_signed_in
  redirect_to home_path if signed_in?
end
