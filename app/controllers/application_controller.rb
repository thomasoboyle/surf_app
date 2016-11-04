class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    render html: "Welcome to the surf app! More cool surf coming soon"
  end
end