require 'test_helper'

class MediaplansControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mediaplans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mediaplan" do
    assert_difference('Mediaplan.count') do
      post :create, :mediaplan => { }
    end

    assert_redirected_to mediaplan_path(assigns(:mediaplan))
  end

  test "should show mediaplan" do
    get :show, :id => mediaplans(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => mediaplans(:one).to_param
    assert_response :success
  end

  test "should update mediaplan" do
    put :update, :id => mediaplans(:one).to_param, :mediaplan => { }
    assert_redirected_to mediaplan_path(assigns(:mediaplan))
  end

  test "should destroy mediaplan" do
    assert_difference('Mediaplan.count', -1) do
      delete :destroy, :id => mediaplans(:one).to_param
    end

    assert_redirected_to mediaplans_path
  end
end
