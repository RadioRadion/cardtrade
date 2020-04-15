class CardsController < ApplicationController

  def index
    @cards = Card.all
  end

  def new
  end

  def edit
    @card = Card.new
  end




  def update
    @card = Card.find(params[:id])

    if @card.update(card_params)
      redirect_to  edit_card_path
    else
      render :new

    end
  end

  def destroy
  end

  private

  def cards_params
    params.require(:card).permit(:condition)
  end
end
