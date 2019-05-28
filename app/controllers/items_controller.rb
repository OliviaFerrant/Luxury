class ItemsController < ApplicationController
  before_action :set_items, only: [:show, :edit, :update, :destroy]

  def index
    @items = policy_scope(Item).order(brand: :asc)
  end

  def show
    authorized @item
  end

  def new
    @item = Item.new
    authorized @item
  end

  def create
    @item = Item.new(item_params)
    authorized @item
    @item.user = current_user
    if @item.save
      redirect_to item_path(@item)
    else
      render :new
    end
  end

  def edit
    authorized @item
  end

  def update
    authorized @item
    if @item.update
      redirect_to item_path(@item)
    else
      render :edit
    end
  end

  def destroy
    authorized @item
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
