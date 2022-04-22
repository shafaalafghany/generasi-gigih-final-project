FactoryBot.define do
  factory :order_detail do
    menu_name { Faker::Food.dish }
    menu_price { 10000 }
    menu_quantity { 1 }
    order_id { 1 }
    menu_id { 1 }
  end
end
