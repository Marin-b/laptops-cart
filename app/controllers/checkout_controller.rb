class CheckoutController < ApplicationController
  def create
    render json: cart.total_price
  end

  private

  def cart_items
    params[:ids] || []
  end

  def cart
    return @cart if @cart

    @cart = Cart.new
    cart_items.each do |item|
      cart.add(item)
    end
    @cart
  end
end
