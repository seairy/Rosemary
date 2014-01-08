# -*- encoding : utf-8 -*-
module ApplicationHelper
  
  def datetime_tag datetime
    datetime.strftime '%Y-%m-%d %H:%M' unless datetime.blank?
  end
  
  def date_tag date
    date.strftime '%Y-%m-%d' unless date.blank?
  end
  
  def indent_tag content
    content.start_with?('　　') ? content : content.insert(0, '　　')
  end
  
  def flash_tag
    if flash[:alert]
      raw "<div class=\"notice alert\">#{flash[:alert]}</div>"
    elsif flash[:notice]
      raw "<div class=\"notice\">#{flash[:notice]}</div>"
    end
  end
end
