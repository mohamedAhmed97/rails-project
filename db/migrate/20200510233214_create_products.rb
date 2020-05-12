class CreateProducts < ActiveRecord::Migration[6.0]
    def change
      create_table :products do |t|
        t.string :title
        t.decimal :price
        t.text :description
        t.string :image
        t.references :category, null: false, foreign_key: true
        t.references :brand, null: false, foreign_key: true
        t.timestamps
      end
    end
  end