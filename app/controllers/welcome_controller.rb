class WelcomeController < ApplicationController
  def index
  end

  def unhandled
    response.status = 404
  end
end
