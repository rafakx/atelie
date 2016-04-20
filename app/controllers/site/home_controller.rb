class Site::HomeController < Site::ApplicationController
  def index
    @products = Product.all
  end
end
