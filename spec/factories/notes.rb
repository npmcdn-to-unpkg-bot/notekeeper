FactoryGirl.define do
  factory :note do
    title "MyString"
    content "MyText"
    association :user
    colour nil
    
    factory :invalid_note do
      title nil
    end
  end
end
