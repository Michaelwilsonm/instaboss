require 'test_helper'

class ShopTheLookItemsControllerTest < ActionController::TestCase
  setup do
    @shop_the_look_item = shop_the_look_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shop_the_look_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shop_the_look_item" do
    assert_difference('ShopTheLookItem.count') do
      post :create, shop_the_look_item: {  }
    end

    assert_redirected_to shop_the_look_item_path(assigns(:shop_the_look_item))
  end

  test "should show shop_the_look_item" do
    get :show, id: @shop_the_look_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shop_the_look_item
    assert_response :success
  end

  test "should update shop_the_look_item" do
    patch :update, id: @shop_the_look_item, shop_the_look_item: {  }
    assert_redirected_to shop_the_look_item_path(assigns(:shop_the_look_item))
  end

  test "should destroy shop_the_look_item" do
    assert_difference('ShopTheLookItem.count', -1) do
      delete :destroy, id: @shop_the_look_item
    end

    assert_redirected_to shop_the_look_items_path
  end
end
