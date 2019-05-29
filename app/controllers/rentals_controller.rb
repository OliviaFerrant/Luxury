class RentalsController < ApplicationController
  before_action :set_item, only: [:new, :create]

  def index
    @rentals = policy_scope(Rental)
  end

  def show
    authorize @rental
  end

  def new
    @rental = Rental.new
    authorize @rental
  end

  def create
    @rental = Rental.new(rental_params)
    authorize @rental
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
    authorize @rental
  end

  def update
    @rental = Rental.find(params[:id])
    authorize @rental
    if @rental.update(rental_params)
      redirect_to rental_path(@rental)
    else
      render :edit
    end
  end

  def destroy
    @rental = Rental.find(params[:id])
    authorize @rental
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
