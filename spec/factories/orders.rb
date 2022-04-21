FactoryBot.define do
  factory :order do
    order_invoice { "INV/2204220001" }
    order_total_price { 100000 }
    order_date { Faker::Time.between_dates(from: Date.today - 7, to: Date.today, period: :all) }
    order_status { "NEW" }
    customer_id { 1 }
    user_id { 1 }
  end
end
