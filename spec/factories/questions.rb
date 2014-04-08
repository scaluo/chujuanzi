# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    type 1
    score 1
    content "MyText"
    isempty false
    isauto false
    testpaper_id 1
  end
end
