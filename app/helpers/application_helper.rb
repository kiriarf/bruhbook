module ApplicationHelper
  def timestamp(created_time)
    elapsed_seconds = (@time_now - created_time).floor
    elapsed_minutes = (elapsed_seconds/60).floor
    elapsed_hours = (elapsed_seconds/3600).floor 
    elapsed_days = (elapsed_hours/24).floor 
    remaining_hours = elapsed_hours - elapsed_days*24

    if elapsed_hours < 1 
      result = "#{elapsed_minutes}m ago" 
    elsif elapsed_hours <= 24 
      result = "#{elapsed_hours}h ago" 
    else 
      result = "#{elapsed_days}d #{remaining_hours}h ago" 
    end 

    return result
  end 
end
