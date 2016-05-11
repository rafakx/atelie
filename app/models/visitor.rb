class Visitor < ActiveRecord::Base
  belongs_to :message

  def fullname
    "#{firstname} #{lastname}"
  end

end
