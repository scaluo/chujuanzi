class Question < ActiveRecord::Base
  belongs_to :question
  validates_presence_of :content,message: "题目内容不能为空"
end
