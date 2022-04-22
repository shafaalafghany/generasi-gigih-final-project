class CreateOrderDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :order_details do |t|
      t.string :menu_name
      t.integer :menu_price
      t.integer :menu_quantity
      t.integer :order_id
      t.integer :menu_id

      t.timestamps
    end
  end
end
