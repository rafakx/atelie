class CreateVisitors < ActiveRecord::Migration
  def change
    create_table :visitors do |t|
      t.string :firstname
      t.string :lastname
      t.string :email

      t.timestamps null: false
    end
  end
end
