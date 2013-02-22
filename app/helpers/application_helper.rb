module ApplicationHelper
  def parse_total_time(time)
    # skipping the modulus for speed
    if time < 60
      "#{time} seconds"
    elsif time < 3600
      "#{(time/60.0).round} minutes"
    else
      "#{(time/3600.0).round} hours"
    end
  end
end
