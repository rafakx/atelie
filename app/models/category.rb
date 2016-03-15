class Category < ActiveRecord::Base
  has_many :products, through: :product_categories

  validates :name, presence: true


  def in_use?
    ProductCategory.exists?(category_id: self.id)
  end
end
