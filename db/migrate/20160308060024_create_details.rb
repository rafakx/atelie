class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.string :name
      t.string :metrics

      t.timestamps null: false
    end
  end
end
