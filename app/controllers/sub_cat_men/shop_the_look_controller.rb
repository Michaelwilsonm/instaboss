class SubCatMen::ShopTheLookController < MenController

  def shop_the_look
    @shop_the_look = @shop_look_images.shop_the_look_men.paginate(:page =>params[:page], :per_page => 33)
    @all_featured = @shop_look_images.featured_four_categories_shop_look_mens
    respond_to do |format|
        format.html
        format.js
    end
  end


  # NOT USING THESE OTHER PAGES JUST YET

  # def other
  #   @shop_the_look = @shop_look_images.find_sub_category_mens("Other").paginate(:page =>params[:page], :per_page => 33)
  #   respond_to do |format|
  #       format.html
  #       format.js
  #   end
  # end

  # def going_out
  #   @shop_the_look = @shop_look_images.find_sub_category_mens("Going").paginate(:page =>params[:page], :per_page => 33)
  #   respond_to do |format|
  #       format.html
  #       format.js
  #   end
  # end

  # def working_out
  #   @shop_the_look = @shop_look_images.find_sub_category_mens("Working").paginate(:page =>params[:page], :per_page => 33)
  #   respond_to do |format|
  #       format.html
  #       format.js
  #   end
  # end

  # def casual
  #   @shop_the_look = @shop_look_images.find_sub_category_mens("Casual").paginate(:page =>params[:page], :per_page => 33)
  #   respond_to do |format|
  #       format.html
  #       format.js
  #   end
  # end
end