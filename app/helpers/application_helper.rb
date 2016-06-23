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

  def zeros price
    str_price = price.to_s
    split = str_price.split(".")

    if split.last.to_i < 10 && split.last.length != 2
      price = str_price + "#{0}"
    else
      price.to_s
    end
  end

  def word_branding brand
    brand_array = []
    brand_array << brand
    new_str = ''

    brand_array.each do |f|
      if brand_array.include?("fcuk")
        new_str = f.upcase
      elsif brand_array.include?("mvmt")
        new_str = f.upcase
      else
        new_str = f.titleize
      end
    end
    new_str
  end


end
