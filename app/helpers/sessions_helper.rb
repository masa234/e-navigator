module SessionsHelper
  def sign_in?
    !!current_user
  end
  
  def current_user
    return nil unless session[:user_id]
    @current_user ||= User.find_by(id: session[:user_id])
  end
  

end
