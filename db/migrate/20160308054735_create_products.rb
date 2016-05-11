class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.references :administrator, index: true, foreign_key: true
      t.boolean :publish

      t.timestamps null: false
    end
  end
end
