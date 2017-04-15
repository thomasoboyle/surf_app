module UsersHelper

  def admin_user?
    #current_user ||= User.find_by(id: session[:user_id])
    #current_user.admin?
  end
end

    ## I am not sure but there seems to be something wrong
    ## with current_user. Maybe current users doesnt return
    ## the full users, which is why I can't call 'admin?'
    ## on it.

    ## I only experience the error when logged in
