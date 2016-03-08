class Admin::AdministratorsController < Admin::ApplicationController
  def index
    @administrators = Administrator.all
  end

  def edit
    @administrator = Administrator.find(params[:id])
  end

  def update
    @administrator = Administrator.find(params[:id])

    if @administrator.update(administrator_params)
      flash[:notice] = "administrator was successfully update"
      redirect_to admin_administrators_url
    else
      flash[:alert] = "There was a problem updating administrator"
      render 'edit'
    end
  end

  def administrator_params
    params.require(:administrator).permit(:id, :firstname, :lastname, :email, :username, :password)
  end

end