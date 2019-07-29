FactoryBot.define do

  sequence :email do |n|
    "test#{n}@test.com"
  end

  factory :user do
    full_name { 'Jon User' }
    email {generate :email}
    password { "asdfasdf" }
    password_confirmation { "asdfasdf" }
    phone {"5528008000"}
  end

  factory :non_authorized_user, class: "User" do
    full_name { 'Second User' }
    email {generate :email}
    password { "asdfasdf" }
    password_confirmation { "asdfasdf" }
    phone {"5528008000"}
  end


  factory :admin_user, class: "AdminUser" do
    full_name { 'Admin User' }
    email {generate :email}
    password { "asdfasdf" }
    password_confirmation { "asdfasdf" }
    phone {"5528008000"}
  end

end
