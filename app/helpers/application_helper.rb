module ApplicationHelper

  def std_format_date date
    return "" unless date
    date.strftime(" at %l:%M %P on %b %e, %Y")
  end

  def std_format_day date
    return "" unless date
    date.strftime("%b %e, %Y")
  end

end
