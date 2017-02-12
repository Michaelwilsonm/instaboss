class SubCatMen::ShopTheLookController < MenController

  def shop_the_look
    @shop_the_look_mens = @shop_look_images.shop_the_look_men
  end

  def other

  end

  def going_out

  end

  def working_out

  end

  def casual

  end
end