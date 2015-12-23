require 'test_helper'

class NegativeFeedbacksControllerTest < ActionController::TestCase
  setup do
    @negative_feedback = negative_feedbacks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:negative_feedbacks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create negative_feedback" do
    assert_difference('NegativeFeedback.count') do
      post :create, negative_feedback: { cook: @negative_feedback.cook, customer: @negative_feedback.customer, customer_id: @negative_feedback.customer_id, date: @negative_feedback.date, feedback: @negative_feedback.feedback, remark: @negative_feedback.remark, spid: @negative_feedback.spid }
    end

    assert_redirected_to negative_feedback_path(assigns(:negative_feedback))
  end

  test "should show negative_feedback" do
    get :show, id: @negative_feedback
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @negative_feedback
    assert_response :success
  end

  test "should update negative_feedback" do
    patch :update, id: @negative_feedback, negative_feedback: { cook: @negative_feedback.cook, customer: @negative_feedback.customer, customer_id: @negative_feedback.customer_id, date: @negative_feedback.date, feedback: @negative_feedback.feedback, remark: @negative_feedback.remark, spid: @negative_feedback.spid }
    assert_redirected_to negative_feedback_path(assigns(:negative_feedback))
  end

  test "should destroy negative_feedback" do
    assert_difference('NegativeFeedback.count', -1) do
      delete :destroy, id: @negative_feedback
    end

    assert_redirected_to negative_feedbacks_path
  end
end
