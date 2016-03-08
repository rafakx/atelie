class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :name
      t.integer :description
      t.references :administrator, index: true, foreign_key: true
      t.boolean :publish

      t.timestamps null: false
    end
  end
end
