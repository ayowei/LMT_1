require 'test_helper'

class ProjsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proj = projs(:one)
  end

  test "should get index" do
    get projs_url
    assert_response :success
  end

  test "should get new" do
    get new_proj_url
    assert_response :success
  end

  test "should create proj" do
    assert_difference('Proj.count') do
      post projs_url, params: { proj: { case: @proj.case, hwid: @proj.hwid } }
    end

    assert_redirected_to proj_url(Proj.last)
  end

  test "should show proj" do
    get proj_url(@proj)
    assert_response :success
  end

  test "should get edit" do
    get edit_proj_url(@proj)
    assert_response :success
  end

  test "should update proj" do
    patch proj_url(@proj), params: { proj: { case: @proj.case, hwid: @proj.hwid } }
    assert_redirected_to proj_url(@proj)
  end

  test "should destroy proj" do
    assert_difference('Proj.count', -1) do
      delete proj_url(@proj)
    end

    assert_redirected_to projs_url
  end
end
