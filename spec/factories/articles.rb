FactoryGirl.define do
  factory :article do
    sequence(:title) { |n| "Title#{n}"}
    sequence(:text) { |n| "text#{n}"}
  end
end