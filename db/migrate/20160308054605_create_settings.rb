class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :site_name
      t.integer :product_per_page
      t.boolean :under_maintenance

      t.timestamps null: false
    end
  end
end
