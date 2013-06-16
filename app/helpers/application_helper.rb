module ApplicationHelper
  
  def icon_link(path, icon_class, html_options = {})
    icon_content = content_tag(:i, nil, :class => icon_class)
    content = link_to icon_content, path, html_options
    content
  end

  def flash_css_class(flash_key)
    case flash_key
      when :notice then "alert alert-success"
      when :info then "alert alert-info"
      when :warning then "alert"
      when :alert then "alert alert-error"
    end
  end

  def back_url
    request.referrer
  end
end
