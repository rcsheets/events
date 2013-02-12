class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :log_request

  protected
    def log_request
      req = WebRequest.new
      req.guid = request.uuid
      req.save
    end
end
