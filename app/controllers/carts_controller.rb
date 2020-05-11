class CartsController < ApplicationController
  # load_and_authorize_resource
  # before_action :authenticate_user!  ,:only =>[ :create,:edit, :update,:destroy  ]
  def show
    @cart_items = current_cart.cart_items
  end

#   def create
#     @cart = cart.new(cart_params)
#     @cart.user_id=current_user.id

#     if @cart.save
#       redirect_to @cart
#     else
#       render 'show'
#     end
# end

# private
#         def cart_params
#             params.require(:cart).permit(:cart_items, :user_id)
#         end
end
