class Site::ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
 
  layout 'site'
end