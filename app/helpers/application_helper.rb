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

  def add_zero(price)

  end

end
