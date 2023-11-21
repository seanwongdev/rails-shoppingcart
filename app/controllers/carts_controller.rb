class CartsController < ApplicationController
  def show
    @cart = Cart.find(params[:id])
    @cart_items = @cart.cart_items
    @total_cost = @cart_items.sum { |cart_item| cart_item.quantity * cart_item.item.price.to_f }.round(2)
  end
end
