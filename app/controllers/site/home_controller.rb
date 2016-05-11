class Site::HomeController < Site::ApplicationController
  def index
    @products = Product.first(12)
  end
end
