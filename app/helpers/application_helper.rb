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
      elsif brand_array.include?("forever21")
        new_str = "Forever 21"
      else
        new_str = f.titleize
      end
    end
    new_str
  end

  def link_to_brand_page brand_name, brand_sex
    womens_hash = {'alice mccall': '/women_brand/alice_mccall' , 'auguste': '/women_brand/auguste','forever 21': '/women_brand/forever_21', 'lorna jane': '/women_brand/lorna_jane', 'seafolly': '/women_brand/sea_folly', 'sunday somewhere': '/women_brand/sunday_somewhere', 'tony bianco': '/women_brand/tony_bianco', 'topshop': '/women_brand/top_shop', "victoria's secret": '/women_brand/victorias_secret'}
    mens_hash = {'bjorn borg': '/men_brand/bjorn_borg' , 'i love ugly': '/men_brand/i_love_ugly', 'just another fisherman': '/men_brand/just_another_fisherman', 'mvmt': '/men_brand/mvmt', 'moreporks': '/men_brand/morepork', 'nautica': '/men_brand/nautica', 'new balance': '/men_brand/new_balance', 'retromarine': '/men_brand/retro_marine', 'sunday somewhere': '/men_brand/sunday_somewhere'}

    link_href = ""
    if brand_sex == "Mens"
      mens_hash.select do |key, value|
        if key.to_s == brand_name
          link_href = value
        end
      end
    elsif brand_sex == "Womens"
      womens_hash.select do |key, value|
        if key.to_s == brand_name
          link_href = value
        end
      end
    end
    link_href
  end
end






