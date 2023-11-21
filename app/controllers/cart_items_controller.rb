class CartItemsController < ApplicationController
  before_action :set_shopping_cart

  def index
    @cart_items = @cart.cart_items
  end

  def create
    @item = Item.find(params[:item_id])
    @cart_item = @cart.cart_items.build(cart_item_params)

    if @cart_item.save
      redirect_to cart_path(@cart), notice: 'Item added to cart successfully.'
    else
      render 'items/show', alert: 'Failed to add item to cart.'
    end
  end

  private

  def set_shopping_cart
    @cart = Cart.find(params[:cart_id])
  end

  def cart_item_params
    params.require(:cart_item).permit(:item_id, :quantity)
  end
end
