class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_cart

  def current_cart
      @current_cart ||= Cart.find_by(id: current_user.current_cart_id)
  end

end
