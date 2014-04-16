class Answer < ActiveRecord::Base
  belongs_to :question
  validates_presence_of :content,message: "答案内容不能为空"
  
end
