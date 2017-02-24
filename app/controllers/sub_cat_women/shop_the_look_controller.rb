class SubCatWomen::ShopTheLookController < WomenController

  def shop_the_look
    @shop_the_look = @shop_look_images.shop_the_look_women.paginate(:page =>params[:page], :per_page => 33)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def beach_swim
    @shop_the_look = @shop_look_images.find_sub_category_womens("Beach & Swim").paginate(:page =>params[:page], :per_page => 33)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def other
    @shop_the_look = @shop_look_images.find_sub_category_womens("Other").paginate(:page =>params[:page], :per_page => 33)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def going_out
    @shop_the_look = @shop_look_images.find_sub_category_womens("Going Out").paginate(:page =>params[:page], :per_page => 33)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def working_out
    @shop_the_look = @shop_look_images.find_sub_category_womens("Working Out").paginate(:page =>params[:page], :per_page => 33)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def casual
    @shop_the_look = @shop_look_images.find_sub_category_womens("Casual").paginate(:page =>params[:page], :per_page => 33)
    respond_to do |format|
        format.html
        format.js
    end
  end
end