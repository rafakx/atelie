module ApplicationHelper
  
  def status_converter(status, truthy: nil, falsey: nil)
    if status
      truthy
    else
      falsey
    end
  end


  def is_active(controller, name)
    if controller.to_s == name.to_s
      return 'class=active'
    end
  end
end
