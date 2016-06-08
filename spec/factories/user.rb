require "faker"

FactoryGirl.define do
  factory :user do
    name {Faker::Name.name}
    email {Faker::Internet.email}
    password "12345678"
    password_confirm "12345678"

    factory :admin do
      role 0
    end
  end
end
