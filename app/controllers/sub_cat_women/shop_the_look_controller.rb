class SubCatWomen::ShopTheLookController < WomenController

  def shop_the_look
    @shop_the_look = @shop_look_images.shop_the_look_women.paginate(:page =>params[:page], :per_page => 33)
    @all_featured = @shop_look_images.featured_four_categories_shop_look_womens
    respond_to do |format|
        format.html
        format.js
    end
  end

  def beach_swim
    @shop_the_look = @shop_look_images.find_sub_category_womens_beach.paginate(:page =>params[:page], :per_page => 33)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def other
    @shop_the_look = @shop_look_images.find_sub_category_womens_other.paginate(:page =>params[:page], :per_page => 33)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def going_out
    @shop_the_look = @shop_look_images.find_sub_category_womens_going_out.paginate(:page =>params[:page], :per_page => 33)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def working_out
    @shop_the_look = @shop_look_images.find_sub_category_womens_working_out.paginate(:page =>params[:page], :per_page => 33)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def casual
    @shop_the_look = @shop_look_images.find_sub_category_womens_casual.paginate(:page =>params[:page], :per_page => 33)
    respond_to do |format|
        format.html
        format.js
    end
  end
end