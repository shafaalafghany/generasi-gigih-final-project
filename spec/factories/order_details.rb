FactoryBot.define do
  factory :order_detail do
    menu_name { "MyString" }
    menu_price { 1 }
    menu_quantity { 1 }
    order_id { 1 }
    menu_id { 1 }
  end
end
