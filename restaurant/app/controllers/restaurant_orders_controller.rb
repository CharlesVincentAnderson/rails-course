class RestaurantOrdersController < ApplicationController
    def index
        @orders = Order.where(status: ['submitted', 'preparing', 'enroute'])
    end
    
    def prepare
        @order = Order.find(params[:id])
        @order.status = 'preparing'
        @order.save
        redirect_to restaurant_orders_path
    end
    
    def enroute
    end
    
    def delivered
    end
end
