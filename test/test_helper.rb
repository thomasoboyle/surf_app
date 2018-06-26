ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...

  def manual_sign_in_as(user)
    post login_path, params: {
      session: {
        email: user.email,
        password: user.password,
        name: user.name
      }
    }
  end
end
