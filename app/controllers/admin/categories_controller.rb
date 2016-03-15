class Admin::CategoriesController < Admin::ApplicationController
  def new
    @categories = Category.all
    @category = Category.new
  end

  def create
    categories_params[:name].split(',').map do |n|
      Category.new(name: n).save
    end
    redirect_to new_admin_category_path, notice: "Categoria criada"
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(categories_params)
      redirect_to new_admin_category_path, notice: "Categoria atualizado com sucesso!"
    else
      flash[:alert] = "Não foi atualizado"
      render :edit
    end
  end

  def show
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to :back, notice: "Excluido com sucesso"
  end

  private

  def categories_params
    params.require(:category).permit(:id, :name)
  end
end
