require 'test_helper'

class LettersControllerTest < ActionController::TestCase
  setup do
    @letter = letters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:letters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create letter" do
    assert_difference('Letter.count') do
      post :create, letter: { from: @letter.from, issue_date: @letter.issue_date, reference_no: @letter.reference_no, to: @letter.to, your_reference_no: @letter.your_reference_no }
    end

    assert_redirected_to letter_path(assigns(:letter))
  end

  test "should show letter" do
    get :show, id: @letter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @letter
    assert_response :success
  end

  test "should update letter" do
    put :update, id: @letter, letter: { from: @letter.from, issue_date: @letter.issue_date, reference_no: @letter.reference_no, to: @letter.to, your_reference_no: @letter.your_reference_no }
    assert_redirected_to letter_path(assigns(:letter))
  end

  test "should destroy letter" do
    assert_difference('Letter.count', -1) do
      delete :destroy, id: @letter
    end

    assert_redirected_to letters_path
  end
end
