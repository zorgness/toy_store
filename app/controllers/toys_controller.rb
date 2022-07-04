class ToysController < ApplicationController
  def index
    @category = Category.find(params[:category_id])
    @toys = Toy.where(category_id: params[:category_id])
  end

  def show
    @toy = Toy.find(params[:id])
  end
end
