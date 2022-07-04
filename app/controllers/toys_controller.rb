class ToysController < ApplicationController
  def index
    @category = Category.find(params[:category_id])
    @toys = Toy.where(category_id: params[:category_id])
  end

  def show
    @toy = Toy.find(params[:id])
  end

  def new
    @toy = Toy.new
  end

  def create
    @toy = Toy.new(toy_params)
    @toy.user = current_user
    if @toy.save
      redirect_to category_toy(@toy)
    else
      render :new
    end
  end

  private

  def toy_params
    params.require(:toy).permit(:name, :description, :price, photos: [])
  end
end
