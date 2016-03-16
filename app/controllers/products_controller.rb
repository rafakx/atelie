class ProductsController < ApplicationController
  def index
    @products = Product.where(publish: true).order(id: :desc).page(params[:page])
  end

  def show
    @product = Product.find(params[:id])
  end
end
