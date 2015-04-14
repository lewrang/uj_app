FactoryGirl.define do
  factory :user do
    sequence(:first_name) { |n| "John#{n}"}
    sequence(:last_name) { |n| "Smith#{n}"}
    sequence(:email) { |n| "johns#{n}@gmail.com"}
    password 'password'
  end
end