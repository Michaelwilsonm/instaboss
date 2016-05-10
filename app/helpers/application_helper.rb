module ApplicationHelper

  def sortable(column, title = nil)
    title ||= column.titleize
    direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"
    link_to title, :sort => column, :direction => direction
  end

  def percentage(price, sale_price)
    difference = price - sale_price
    percent = difference / price * 100
    percent.round
  end

end


# First: work out the difference (increase) between the two numbers you are comparing.
# Increase = New Number - Original Number.
# Then: divide the increase by the original number and multiply the answer by 100.
# % increase = Increase ÷ Original Number × 100.