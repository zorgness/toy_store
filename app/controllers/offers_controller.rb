class OffersController < ApplicationController
  def show
    @offer = Offer.find(params[:id])
  end

  def create
    @toy = Toy.find(params[:toy_id])
    @offer = Offers.new(offer_params)
    @offer.toy = @toy
    @offer.user = current_user
    if @offer.save
      redirect_to @offer, notice: 'Offer was successfully created.'
    else
      render :new
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:price)
  end
end
