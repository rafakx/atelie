class Product < ActiveRecord::Base
  has_many :images
  has_many :details, through: :product_details
  has_many :categories, through: :product_categories

  belongs_to :administrator
end
