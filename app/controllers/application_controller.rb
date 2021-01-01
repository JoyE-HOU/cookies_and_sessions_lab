class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Create the cart method in ApplicationController#cart
  def cart
    # returns the user's shopping cart, an initially empty array
    # cart = session[:cart] || []
    
    # creates a cart in the session if one doesn't exist
    # returns the existing cart if one already exists
    # session[:cart] = cart
    
    session[:cart] ||= []
  end
end
