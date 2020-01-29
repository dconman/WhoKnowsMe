require 'test_helper'

class DataValuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @data_value = data_values(:one)
  end

  test "should get index" do
    get data_values_url
    assert_response :success
  end

  test "should get new" do
    get new_data_value_url
    assert_response :success
  end

  test "should create data_value" do
    assert_difference('DataValue.count') do
      post data_values_url, params: { data_value: {  } }
    end

    assert_redirected_to data_value_url(DataValue.last)
  end

  test "should show data_value" do
    get data_value_url(@data_value)
    assert_response :success
  end

  test "should get edit" do
    get edit_data_value_url(@data_value)
    assert_response :success
  end

  test "should update data_value" do
    patch data_value_url(@data_value), params: { data_value: {  } }
    assert_redirected_to data_value_url(@data_value)
  end

  test "should destroy data_value" do
    assert_difference('DataValue.count', -1) do
      delete data_value_url(@data_value)
    end

    assert_redirected_to data_values_url
  end
end
