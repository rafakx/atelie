class Admin::SessionsController < Admin::ApplicationController
  before_action :authorize, except: [:new, :create]

  def new
  end

  def create
    @administrator = Administrator.find_by(username: params[:username]).try(:authenticate, params[:password])
    
    if @administrator
      session[:current_administrator_id] = @administrator.id
      redirect_to admin_administrators_path, notice: 'You have successfully signed in'
    else
      flash[:alert] = "fail"
      render :new
    end
  end

  def destroy
    session[:current_administrator_id] = nil
    redirect_to '/login', notice: 'You have successfully logged out'
  end
end
