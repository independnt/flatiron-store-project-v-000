class LineItemsController < ApplicationController


  def create
    current_user.create_new_cart unless current_cart
    item = current_user.current_cart.add_item(params[:item_id])
    if item.save
      redirect_to cart_path(current_cart), flash:{notice: "Your item has been successfully added!"}
    else
      redirect_to store_path, flash:{notice: "Your item could not be added"}
    end
  end
end
