module Admin::CategoriesHelper
  def create_deletable_button category
    if category.in_use?
      link_to '#' do
        content_tag(:button, 'Deletar', class: 'disabled btn btn-default')
      end
    else
      link_to admin_category_path(category), method: :delete do
        content_tag(:button, 'Deletar', class: 'btn btn-default')
      end
    end
  end    

end


