class ApplicationController < ActionController::Base
  before_action :ensure_cart

  private

  def ensure_cart
    unless session[:cart_id]
      cart = Cart.create
      session[:cart_id] = cart.id
    end
  end
end
