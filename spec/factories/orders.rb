FactoryBot.define do
  factory :order do
    order_invoice { "MyString" }
    order_total_price { 1 }
    order_date { "MyText" }
    order_status { "NEW" }
    customer_id { 1 }
    user_id { 1 }
  end
end
