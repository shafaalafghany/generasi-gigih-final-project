class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :order_invoice
      t.integer :order_total_price
      t.text :order_date
      t.string :order_status
      t.integer :customer_id
      t.integer :user_id

      t.timestamps
    end
  end
end
