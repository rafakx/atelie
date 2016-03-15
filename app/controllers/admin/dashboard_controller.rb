class Admin::DashboardController < Admin::ApplicationController
  def index
    # Coloca tudo aqui
    @products = Product.last 5
  end
end
