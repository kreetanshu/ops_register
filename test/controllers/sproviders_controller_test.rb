require 'test_helper'

class SprovidersControllerTest < ActionController::TestCase
  setup do
    @sprovider = sproviders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sproviders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sprovider" do
    assert_difference('Sprovider.count') do
      post :create, sprovider: { contact_no: @sprovider.contact_no, credit: @sprovider.credit, date: @sprovider.date, doj: @sprovider.doj, payment: @sprovider.payment, status: @sprovider.status, uname: @sprovider.uname }
    end

    assert_redirected_to sprovider_path(assigns(:sprovider))
  end

  test "should show sprovider" do
    get :show, id: @sprovider
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sprovider
    assert_response :success
  end

  test "should update sprovider" do
    patch :update, id: @sprovider, sprovider: { contact_no: @sprovider.contact_no, credit: @sprovider.credit, date: @sprovider.date, doj: @sprovider.doj, payment: @sprovider.payment, status: @sprovider.status, uname: @sprovider.uname }
    assert_redirected_to sprovider_path(assigns(:sprovider))
  end

  test "should destroy sprovider" do
    assert_difference('Sprovider.count', -1) do
      delete :destroy, id: @sprovider
    end

    assert_redirected_to sproviders_path
  end
end
