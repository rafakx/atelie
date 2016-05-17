class Message < ActiveRecord::Base
  belongs_to :visitor

  validates :content, presence: {format: "Deve existir uma mensagem."}
end
