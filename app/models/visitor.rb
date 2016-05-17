class Visitor < ActiveRecord::Base
  belongs_to :message

  validates :firstname, presence: {message: 'O Primeiro nome não pode ser vazio'}
  validates :email, presence: {message: 'O Email não pode ser vazio'}, 
            format: {with: /@/, message: 'O Email deve ser válido'}

  def fullname
    firstname + " " + lastname
  end

end
