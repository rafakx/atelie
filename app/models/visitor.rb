class Visitor < ActiveRecord::Base
  belongs_to :message

  validates :name, presence: {message: 'O Nome não pode ser vazio'}
  validates :phone, presence: {message: 'O Telefone nome não pode ser vazio'}
  validates :email, presence: {message: 'O Email não pode ser vazio'}, 
            format: {with: /@/, message: 'O Email deve ser válido'}

end
