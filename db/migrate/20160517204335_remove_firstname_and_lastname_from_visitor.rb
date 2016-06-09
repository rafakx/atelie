class RemoveFirstnameAndLastnameFromVisitor < ActiveRecord::Migration
  def change
    remove_column :visitors, :firstname, :string
    remove_column :visitors, :lastname, :string
  end
end
