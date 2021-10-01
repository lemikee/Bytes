class Api::BusinessesController < ApplicationController
  def index
    @businesses = Business.all
    render :index
  end

  def create
    @business = Business.create!(business_params)
    render :show
  end

  def show
    @business = Business.find_by(id: params[:id])
    if @business
      render :show
    else
      render json: ["Business doesn't exist"]
    end
  end

  def business_params
    params.require(:business).permit(:business_name, :address, :city, :state, :zip_code, :latitude, :longitude, :phone, :website, :price)
  end
end
