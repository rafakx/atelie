class Administrator < ActiveRecord::Base
  has_secure_password
  has_many :products

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true, format: {with: /@/, message: 'não é um email válido'}
  validates :username, presence: true

  def fullname
    "#{firstname} #{lastname}"
  end
end
