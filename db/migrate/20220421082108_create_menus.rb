class CreateMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|
      t.string :menu_name
      t.integer :menu_price
      t.string :menu_description

      t.timestamps
    end
  end
end
