class RentalsController < ApplicationController
  before_action :set_item, only: [:new, :create]

  def show
  end

  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.user = current_user
    @rental.item = @item
    authorize @rental
    if @rental.save
      redirect_to rental_path(@rental)
    else
      render :new
    end
  end

  def edit
    @rental = Rental.find(params[:id])
  end

  def update
    @rental = Rental.find(params[:id])
    if @rental.update(rental_params)
      redirect_to rental_path(@rental)
    else
      render :edit
    end
  end

  def destroy
    @rental = Rental.find(params[:id])
    @rental.destroy
    redirect_to rentals_path
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date, :item_id)
  end

  def set_item
    @item = Item.find(params[:item_id])
  end
end
