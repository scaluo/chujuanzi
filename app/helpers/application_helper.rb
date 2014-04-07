module ApplicationHelper
  def full_title(title)
    base_title = "出卷子"
    if title.empty?
      base_title
    else
      "#{base_title} | #{title}"
    end
  end

  def error_title(object)
    base_error = "数据操作错误"
    base_error = "注册用户失败" if object.instance_of?(User)
    base_error

  end
end
