class ProductsController < ApplicationController
    # Create a Products controller with two actions, index and add.
    def index
    end

    # def new
    # end

    # def create
    # end

    def add
        # get item from the path
        @product = Product.find(params[:id])
        # load the cart from the session, or create a new empty cart.
        # cart = session[:cart] || []
        cart << @product.id
        # save the cart in the session
        # session[:cart] = cart
    end
end
