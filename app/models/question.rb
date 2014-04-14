class Question < ActiveRecord::Base
  belongs_to :testpaper
  validates_presence_of :content,message: "题目内容不能为空"


  def Question.questions_group_type(paperid)
    Question.where(testpaper_id: paperid).group_by{|a|a.qtype}
  end

  def paper_questions(paperid,type)
    if type.nil?
      Question.where(testpaper_id: paperid).order(:type)
    else
      Question.where(testpaper_id: paperid,type: type).order(:type)
    end
  end


end
