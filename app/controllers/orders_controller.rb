class OrdersController < InheritedResources::Base

  private

    def order_params
      params.require(:order).permit(:status, :user_id, :cart_id)
    end

end
