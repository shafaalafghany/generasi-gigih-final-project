FactoryBot.define do
  factory :customer do
    customer_name { "MyString" }
    customer_email { Faker::Internet.email }
    customer_phone { Faker::PhoneNumber.cell_phone_in_e164 }
    customer_address { Faker::Address.full_address }
  end

  factory :invalid_customer, parent: :customer do
    customer_name { nil }
    customer_email { nil }
    customer_phone { nil }
    customer_address { nil }
  end
end
