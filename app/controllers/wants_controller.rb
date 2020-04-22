class WantsController < ApplicationController

  def index
    @wants = Want.all
  end

  def new
    require 'csv'
    @want = Want.new

    @cards = []
    @names = []
    filepath = 'lib/datas/cards.csv'
    CSV.foreach(filepath) do |row|
    # Here, row is an array of columns. 46 => name, 59 => setCode
      @cards << [row[46], row[59]]
      @names << row[46]
    end
    @uniqsName = @names.uniq.sort
  end

  def create
    @want = Want.new(wants_params)
    @want.user = current_user
    if @want.save!
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def edit
    @want = Want.find(params[:id])
  end



  def update
    @want = Want.find(params[:id])

    if @want.update!(wants_params)
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def destroy
    @want = Want.find(params[:id])
    @want.destroy
    redirect_to user_path(current_user)
  end

  private

  def wants_params
    params.require(:want).permit(:name, :quantity, :extension, :foil, :min_condition, :language)
  end
end


