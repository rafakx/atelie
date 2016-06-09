class AddNameAndPhoneFromVisitor < ActiveRecord::Migration
  def change
    add_column :visitors, :name, :string
    add_column :visitors, :phone, :string
  end
end
