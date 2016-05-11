class Site::ProductsController < Site::ApplicationController
  def index
    @products = Product.order(id: :desc).page(params[:page]).per(16)
  end

  def show
  	@product = Product.find(params[:id])
  end
end
