require 'test_helper'

class ResumelinksControllerTest < ActionController::TestCase
  setup do
    @resumelink = resumelinks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resumelinks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resumelink" do
    assert_difference('Resumelink.count') do
      post :create, resumelink: { default_resume_format: @resumelink.default_resume_format, download_automatically: @resumelink.download_automatically, profile_id: @resumelink.profile_id, resumelink: @resumelink.resumelink, show_profile: @resumelink.show_profile, show_resume: @resumelink.show_resume, user_id: @resumelink.user_id }
    end

    assert_redirected_to resumelink_path(assigns(:resumelink))
  end

  test "should show resumelink" do
    get :show, id: @resumelink
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resumelink
    assert_response :success
  end

  test "should update resumelink" do
    patch :update, id: @resumelink, resumelink: { default_resume_format: @resumelink.default_resume_format, download_automatically: @resumelink.download_automatically, profile_id: @resumelink.profile_id, resumelink: @resumelink.resumelink, show_profile: @resumelink.show_profile, show_resume: @resumelink.show_resume, user_id: @resumelink.user_id }
    assert_redirected_to resumelink_path(assigns(:resumelink))
  end

  test "should destroy resumelink" do
    assert_difference('Resumelink.count', -1) do
      delete :destroy, id: @resumelink
    end

    assert_redirected_to resumelinks_path
  end
end
