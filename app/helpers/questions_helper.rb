module QuestionsHelper
  def get_qst_type_name(qtype)
    ret = case qtype
          when 1 then "单选题"
          when 2 then "多选题"
          when 3 then "判断题"
          else "未知题型"
          end
    ret
  end

  def get_qst_partial_name(qtype)
    ret = case qtype
          when 1 then "qstsingle"
          when 2 then "qstmulti"
          when 3 then "qstyesno"
          else ""
          end
    ret
  end
end
