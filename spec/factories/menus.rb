FactoryBot.define do
  factory :menu do
    menu_name { Faker::Food.dish }
    menu_price { 10000 }
    menu_description { 'Some description for Menu' }
  end

  factory :invalid_menu, parent: :menu do
    menu_name { nil }
    menu_price { nil }
    menu_description { nil }
  end
end
