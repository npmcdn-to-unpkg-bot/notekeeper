FactoryGirl.define do
  factory :user do
   username Faker::Internet.user_name 
   sequence :email do |n|
     "person#{n}@example.com"
   end
   password Faker::Internet.password(8)
  end
end
