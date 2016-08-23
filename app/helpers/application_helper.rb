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
    womens_hash = {'Topshop': '/women_brand/top_shop', 'Esther Boutique': '/women_brand/esther', 'Alice McCall': '/women_brand/alice_mccall' , 'Auguste': '/women_brand/auguste', 'Lorna Jane': '/women_brand/lorna_jane', 'Mura Boutique': '/women_brand/mura', 'Samantha Wills': '/women_brand/samantha_wills', 'Seafolly': '/women_brand/sea_folly', 'Senso': '/women_brand/senso', 'Showpo': '/women_brand/showpo', 'Sunday Somewhere': '/women_brand/sunday_somewhere', 'Tony Bianco': '/women_brand/tony_bianco', "Victoria's Secret": '/women_brand/victorias_secret'}

    mens_hash = {'I Love Ugly': '/men_brand/i_love_ugly', 'Just Another Fisherman': '/men_brand/just_another_fisherman', 'Leo Joseph': '/men_brand/leo_joseph', 'MVMT': '/men_brand/mvmt', 'Moreporks': '/men_brand/morepork', 'New Balance': '/men_brand/new_balance', 'retromarine': '/men_brand/retro_marine', 'Sunday Somewhere': '/men_brand/sunday_somewhere'}

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






