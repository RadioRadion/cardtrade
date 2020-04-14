class WantsController < ApplicationController
  def index
    @wants = Want.all
  end

  def new
     @want = Want.new
  end

  def create
    @want = Want.new(wants_params)
    @want.user = current_user
    if @want.save!
      redirect_to wants_path
    else
      render :new
    end
  end


  def destroy
    @want = Want.find(params[:id])
    @want.destroy
    redirect_to wants_path
  end

  private

  def wants_params
    params.require(:want).permit(:name)
  end
end


