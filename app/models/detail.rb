class Detail < ActiveRecord::Base
  has_many :products, through: :product_details
end
