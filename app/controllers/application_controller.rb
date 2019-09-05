class ApplicationController < ActionController::Base
  def default_url_options
    { host: ENV["www.sapio.live"] || "localhost:3000" }
  end
end
