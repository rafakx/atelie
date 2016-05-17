class Admin::SettingsController < Admin::ApplicationController
  def new
    if Setting.any?
      redirect_to edit_admin_setting_path(Setting.order(:id).last)
    else
      @setting = Setting.new
    end
  end

  def create
    @setting = Setting.new(setting_params)
    
    if @setting.save
      redirect_to edit_admin_setting_path(@setting), notice: "Criado com sucesso!"
    else
      flash[:alert] = "Não foi criado"
      render :new
    end
  end

  def edit
    @setting = Setting.find(params[:id])
  end

  def update
    self.create
  end

  def setting_params
    params.require(:setting).permit(:id, :site_name, :product_per_page, :under_maintenance)
  end
end
