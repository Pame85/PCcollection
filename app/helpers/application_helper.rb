module ApplicationHelper
  def namespace
    name = controller.class.module_parent.to_s.downcase
    return name
  end

  def body_class
    "#{controller_name} #{action_name}"
  end

  def flash_class(status)
    case status
    when 'notice' then 'notice-blue'
    when 'alert' then 'alert-pink'
    end
  end

  def humanize_boolean(value)
    value ? 'Yes' : 'No'
  end
end
