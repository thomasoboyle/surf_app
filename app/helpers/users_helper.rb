module UsersHelper

  def admin_user?
    current_user ||= User.find_by(id: session[:user_id])
    current_user.admin?
  end

  def current_user?
    current_user ||= User.find_by(id: session[:user_id])
  end
end
