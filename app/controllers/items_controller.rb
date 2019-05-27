class ItemsController < ApplicationController
  before_action :set_items, only: [:show, :edit, :update, :destroy]
  def index
    @items = Item.all
  end

  def show
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user = @user
    if @item.save
      redirect_to item_path(@item)
    else
      render :new
  end

  def edit
  end

  def update
    if @item.update
      redirect_to item_path(@item)
    else
      render :update
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end

  private

  def set_items
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :category, :brand, :price, :address, :user_id)
  end
end
