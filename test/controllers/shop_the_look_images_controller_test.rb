require 'test_helper'

class ShopTheLookImagesControllerTest < ActionController::TestCase
  setup do
    @shop_the_look_image = shop_the_look_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shop_the_look_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shop_the_look_image" do
    assert_difference('ShopTheLookImage.count') do
      post :create, shop_the_look_image: {  }
    end

    assert_redirected_to shop_the_look_image_path(assigns(:shop_the_look_image))
  end

  test "should show shop_the_look_image" do
    get :show, id: @shop_the_look_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shop_the_look_image
    assert_response :success
  end

  test "should update shop_the_look_image" do
    patch :update, id: @shop_the_look_image, shop_the_look_image: {  }
    assert_redirected_to shop_the_look_image_path(assigns(:shop_the_look_image))
  end

  test "should destroy shop_the_look_image" do
    assert_difference('ShopTheLookImage.count', -1) do
      delete :destroy, id: @shop_the_look_image
    end

    assert_redirected_to shop_the_look_images_path
  end
end
