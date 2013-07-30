# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message do
    content "MyText"
    to_id "MyString"
    from_id "MyString"
  end
end
