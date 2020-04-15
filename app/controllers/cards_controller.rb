class CardsController < ApplicationController

  def index
    @cards = Card.all
  end

  def new
     @card = Card.new
  end

  def create
    @card = Card.new(cards_params)
    @card.user = current_user
    if @card.save!
      redirect_to cards_path
    else
      render :new
    end
  end


  def edit
    @card = Card.find(params[:id])
  end

  def update
    @card = Card.find(params[:id])

    if @card.update(cards_params)
      redirect_to cards_path
    else
      render :new

    end
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy
    redirect_to cards_path
  end

  private

  def cards_params
    params.require(:card).permit(:condition)
  end
end



