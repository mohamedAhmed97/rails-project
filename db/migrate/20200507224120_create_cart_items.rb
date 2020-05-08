class CreateCartItems < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_items do |t|
      t.integer :quantity
      t.integer :product_id
      t.integer :cart_id
      t.decimal :total
      t.decimal :unit_price

      t.timestamps
    end
  end
end
