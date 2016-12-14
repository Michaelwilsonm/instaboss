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

    puts split.last.length
    puts split

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

  def link_to_brand_page brand_name, brand_sex
    womens_hash = {'cooper st': '/women_brand/cooper_st', 'bronze snake': '/women_brand/bronze_snake', 'new balance': '/women_brand/new_balance', 'esther boutique': '/women_brand/esther', 'alice mccall': '/women_brand/alice_mccall' , 'auguste': '/women_brand/auguste', 'lorna jane': '/women_brand/lorna_jane', 'mura boutique': '/women_brand/mura', 'samantha wills': '/women_brand/samantha_wills', 'seafolly': '/women_brand/sea_folly', 'senso': '/women_brand/senso', 'showpo': '/women_brand/showpo', 'sunday somewhere': '/women_brand/sunday_somewhere', 'tony bianco': '/women_brand/tony_bianco', 'princess polly': '/women_brand/princess_polly', 'jo mercer': '/women_brand/jo_mercer' }

    mens_hash = {'mj bale': '/men_brand/mj_bale', 'adidas originals': '/men_brand/adidas', 'windsor smith': '/men_brand/windsor_smith','bronze snake': '/men_brand/bronze_snake', 'the modest vintage player': '/men_brand/the_modest_vintage_player','i love ugly': '/men_brand/i_love_ugly', 'just another fisherman': '/men_brand/just_another_fisherman', 'leo joseph': '/men_brand/leo_joseph', 'mvmt': '/men_brand/mvmt', 'moreporks': '/men_brand/morepork', 'new balance': '/men_brand/new_balance', 'retromarine': '/men_brand/retro_marine', 'sunday somewhere': '/men_brand/sunday_somewhere', 'nike': '/men_brand/nike'}

    link_href = ""
    if brand_sex == "Mens"
      mens_hash.select do |key, value|
        if key.to_s == brand_name
          link_href = value
        end
      end
    elsif brand_sex == "Womens"
      womens_hash.select do |key, value|
        puts key.to_s == brand_name
        if key.to_s == brand_name
          link_href = value
        end
      end
    end
    link_href
  end
end






