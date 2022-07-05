class OffersController < ApplicationController
  def show
    @offer = Offer.find(params[:id])
  end

  def create
    @toy = Toy.find(params[:toy_id])
    @offer = Offer.new(offer_params)
    @offer.toy = @toy
    @offer.user = current_user
    if @offer.save
      redirect_to @offer, notice: 'Offer was successfully created.'
    else
      redirect_to @toy, notice: 'Offer could not be created'
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:price)
  end
end
