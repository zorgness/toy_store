class CategoriesController < ApplicationController

  def index
    if params[:query].present?
      sql_query = "name ILIKE :query"
      @categories = Category.where(sql_query, query: "%#{params[:query]}%")
    else
      @categories = Category.all
    end
  end

end
