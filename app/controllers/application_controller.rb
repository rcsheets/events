class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :log_request

  protected
    def log_request
      req = WebRequest.new
      req.guid = request.uuid
      req.remote_address = request.remote_ip
      req.request_method = env["REQUEST_METHOD"]
      req.request_path = env["PATH_INFO"]
      req.user_agent = env["HTTP_USER_AGENT"]
      req.save
    end
end
