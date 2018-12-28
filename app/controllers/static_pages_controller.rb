class StaticPagesController < ApplicationController
  
  def home
    if logged_in?
      @feed_items = current_user.feed.paginate(page: params[:page])
      @user = current_user
      $i = Date.today
      
    end
  end
  def month
    if logged_in?
      @feed_items = current_user.feed.paginate(page: params[:page])
      @user = current_user
      @next_month = Date.today.next_month
      #$i = $i.beginning_of_day.next_month
      
    end
  end
end
