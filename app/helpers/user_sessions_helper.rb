module UserSessionsHelper

  # Logs in the given users.
  def log_in(user)
    session[:user_id] = user.id
  end
end
