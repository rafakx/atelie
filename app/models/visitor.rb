class Visitor < ActiveRecord::Base
  belongs_to :message

  def completename
    "#{firstname} #{lastname}"
  end

end
