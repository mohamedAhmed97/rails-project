class CreateSearches < ActiveRecord::Migration[6.0]
  def change
    create_table :searches do |t|
      t.string :keywords
      t.integer :category_id
      t.integer :brand_id
      t.decimal :price

      t.timestamps
    end
  end
end
