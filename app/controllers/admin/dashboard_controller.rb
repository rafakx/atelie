class Admin::DashboardController < Admin::ApplicationController
  def index
    @messages = Message.all
    @visitors = Visitor.all
    @products = Product.all
  end
end
