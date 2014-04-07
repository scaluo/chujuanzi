# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :testpaper do
    title "MyString"
    summary "MyText"
    securecode "MyString"
    timelimit 1
    ispublish false
    user_id 1
  end
end
