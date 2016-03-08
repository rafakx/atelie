class CreateProductDetails < ActiveRecord::Migration
  def change
    create_table :product_details do |t|
      t.references :product, index: true, foreign_key: true
      t.references :detail, index: true, foreign_key: true
      t.string :value

      t.timestamps null: false
    end
  end
end
