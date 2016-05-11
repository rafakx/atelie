class Admin::ProductsController < Admin::ApplicationController
  def index
    # if params[:search].present?
    #   @products = Product.matching_name_or_description(params[:search]).page params[:page]
    # else
    #   @products = Product.all.order(id: :desc).page params[:page]
    # end
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.administrator_id = current_administrator.id

    if @product.save
      
      if params[:images]
        params[:images].each do |picture|
          @product.pictures.create(image: picture, main:true)
        end
      end

      redirect_to admin_products_path, notice: "Produto criado com sucesso!"
    else
      flash[:alert] = "Não foi criado"
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to admin_products_path, notice: "Produto atualizado com sucesso!"
    else
      flash[:alert] = "Não foi atualizado"
      render :new
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to admin_products_path, notice: "Produto excluído com sucesso!"
  end

  private

  def product_params
    params.require(:product).permit(:id, :name, :description, :publish, category_ids: [])
  end
end
