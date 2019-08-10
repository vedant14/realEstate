FactoryBot.define do
  factory :search do
    society_name { "MyString" }
    city { "MyString" }
    bedroom { 1 }
    bathroom { 1 }
    balcony { 1 }
    min_price { 1 }
    max_price { 1 }
    furnishing { "MyString" }
  end
end
