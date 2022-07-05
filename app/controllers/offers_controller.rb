class OffersController < ApplicationController
  before_action :set_params, only: %i[show refused destroy validation pending]

  def show
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

  def refused
    @offer.refused = true
    @offer.save
    redirect_to profile_path(current_user)
  end

  def validation
    @offer.validated = true
    @offer.save
    redirect_to profile_path(current_user)
  end

  def pending
    @offer.offer = true
    @offer.save
    redirect_to profile_path(current_user)
  end

  def destroy
    @offer.destroy
    redirect_to profile_path(current_user), alert: "Your request is cancelled"
  end

  private

  def set_params
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:price)
  end
end
