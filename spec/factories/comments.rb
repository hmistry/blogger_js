# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    author_name "MyString"
    body "MyText"
    article nil
  end
end
