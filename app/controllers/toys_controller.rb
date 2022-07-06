class ToysController < ApplicationController
  def index
    @category = Category.find(params[:category_id])
    @toys = Toy.where(category_id: params[:category_id])
  end

  def show
    @offer = Offer.new
    @toy = Toy.find(params[:id])
  end

  def new
    @toy = Toy.new
  end

  def create
    @toy = Toy.new(toy_params)
    @toy.user = current_user
    if @toy.save
      redirect_to @toy
    else
      render :new
    end
  end

  def edit
    @toy = Toy.find(params[:id])
  end

  def update
    @toy.update(activity_params)
    redirect_to @toy
  end

  def destroy
    @toy = Toy.find(params[:id])
    @toy.destroy
    redirect_to profile_path(current_user)
  end

  private

  def toy_params
    params.require(:toy).permit(:name, :description, :price, :category_id, photos: [])
  end
end
