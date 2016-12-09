class StaticPagesController < ApplicationController
  # before_action :authenticate_user!

  def landing
    if current_user
      redirect_to home_path
    end
  end

  def home
    @not_found = false
    if params[:q]
      @q = Item.ransack(params[:q])
      @items = @q.result
      if @items.empty?
         @items = ItemsByUserSettings.call(current_user)
        @not_found = true
      end
    else
      @items = Item.all
    end
  end



  def profile

  end

  def settings
  end

end
