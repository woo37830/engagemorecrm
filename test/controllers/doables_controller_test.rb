require 'test_helper'

class DoablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doable = doables(:one)
  end

  test "should get index" do
    get doables_url
    assert_response :success
  end

  test "should get new" do
    get new_doable_url
    assert_response :success
  end

  test "should create doable" do
    assert_difference('Doable.count') do
      post doables_url, params: { doable: { description: @doable.description, name: @doable.name } }
    end

    assert_redirected_to doable_url(Doable.last)
  end

  test "should show doable" do
    get doable_url(@doable)
    assert_response :success
  end

  test "should get edit" do
    get edit_doable_url(@doable)
    assert_response :success
  end

  test "should update doable" do
    patch doable_url(@doable), params: { doable: { description: @doable.description, name: @doable.name } }
    assert_redirected_to doable_url(@doable)
  end

  test "should destroy doable" do
    assert_difference('Doable.count', -1) do
      delete doable_url(@doable)
    end

    assert_redirected_to doables_url
  end
end
