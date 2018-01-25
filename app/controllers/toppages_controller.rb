class ToppagesController < ApplicationController
  def root
    if sign_in?
      @users = User.order("updated_at desc")  # 降順
    else
      @user = User.new
    end
  end
    
end
