class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.decimal :price
      t.text :description
      t.integer :brand_id
      t.integer :category_id

      t.timestamps
    end
  end
end
