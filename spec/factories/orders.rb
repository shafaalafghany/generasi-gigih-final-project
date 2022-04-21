FactoryBot.define do
  factory :order do
    order_invoice { "INV/2204220001" }
    order_total_price { 100000 }
    order_date { "2022--4-22 08:23:01" }
    order_status { "NEW" }
    customer_id { 1 }
    user_id { 1 }
  end
end
