class CartsController < ApplicationController
  before_action :current_user, only: [:create, :destroy]
  def show
    @cart_items = current_cart.cart_items
  end

end
