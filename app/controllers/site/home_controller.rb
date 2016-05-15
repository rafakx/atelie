class Site::HomeController < Site::ApplicationController
  def index
    @products = Product.order(id: :desc).first(8)
  end
end
