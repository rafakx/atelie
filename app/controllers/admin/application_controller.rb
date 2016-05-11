class Admin::ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
 
  layout 'admin'

  before_action :authorize

  def current_administrator
    @administrator ||= Administrator.find(session[:current_administrator_id]) if session[:current_administrator_id]
  end

  def authorize
    unless current_administrator
      redirect_to '/login', alert: 'Please login to view admin pages'
    end
  end
end