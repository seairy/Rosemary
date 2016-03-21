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
  
  def current_tag name
    raw ' class="current"' if (if name.to_s == 'home' and controller_name == 'home'
      true
    elsif name.to_s == 'about_us' and controller_name == 'contents' and action_name == 'about_us'
      true
    elsif name.to_s == 'business_areas' and controller_name == 'contents' and action_name == 'business_areas'
      true
    elsif name.to_s == 'articles' and controller_name == 'articles'
      true
    elsif name.to_s == 'human_resources' and controller_name == 'contents' and action_name == 'human_resources'
      true
    elsif name.to_s == 'contact_us' and controller_name == 'contents' and action_name == 'contact_us'
      true
    end)
  end
end
