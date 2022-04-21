FactoryBot.define do
  factory :menu do
    menu_name { Faker::Food.dish }
    menu_price { 10000 }
    menu_description { Faker::Food.description }
  end
end
