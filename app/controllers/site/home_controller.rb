class Site::HomeController < Site::ApplicationController
  def index
    @products = Product.order(id: :desc).page(params[:page]).per(12)
  end
end
