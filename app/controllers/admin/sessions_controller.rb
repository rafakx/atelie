class Admin::SessionsController < Admin::ApplicationController
  before_action :authorize, except: [:new, :create]

  def new
    if current_administrator
      redirect_to admin_dashboard_index_path
    else
      render :layout => "login"
    end
  end

  def create
    @administrator = Administrator.find_by(username: params[:username]).try(:authenticate, params[:password])
    
    if @administrator
      session[:current_administrator_id] = @administrator.id
      redirect_to admin_dashboard_index_path, notice: 'Você entrou com sucesso'
    else
      flash[:alert] = 'Login incorreto'
      redirect_to '/login'
    end
  end

  def destroy
    session[:current_administrator_id] = nil
    redirect_to '/login', notice: 'Você saiu com sucesso'
  end
end
