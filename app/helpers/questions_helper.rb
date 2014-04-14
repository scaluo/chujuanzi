module QuestionsHelper
  def gettypename(qtype)
    ret = case qtype
          when 1 then "单选题"
          when 2 then "多选题"
          when 3 then "判断题"
          else "未知题型"
          end
    ret
  end
end
