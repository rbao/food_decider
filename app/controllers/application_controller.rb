class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate

  protected
    def require_login?
      false
    end

    def authenticate
      return true unless require_login?
      authenticate_or_request_with_http_basic('Administration') do |username, password|
        username == 'admin' && password == 'test1234'
      end
    end
end
