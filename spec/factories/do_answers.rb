# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :do_answer do
    user_id 1
    paper_id 1
    question_id 1
    content "MyText"
    score 1
  end
end
