class Product < ActiveRecord::Base
  

  has_many :images, dependent: :destroy
  has_many :details, through: :product_details
  has_many :product_categories, dependent: :destroy
  has_many :categories, through: :product_categories

  belongs_to :administrator

  validates :name, presence: true


  def self.matching_name_or_description search
    where("name LIKE ? OR description LIKE ?", "%#{search}%", "%#{search}%")
  end
end
