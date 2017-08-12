class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #Layout for all controllers
  layout 'admin'
end
