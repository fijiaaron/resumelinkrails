require 'test_helper'

class ResumesControllerTest < ActionController::TestCase
  setup do
    @resume = resumes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resumes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resume" do
    assert_difference('Resume.count') do
      post :create, resume: { filename: @resume.filename, format: @resume.format, generated_by: @resume.generated_by, is_approved: @resume.is_approved, is_current: @resume.is_current, is_deleted: @resume.is_deleted, is_flagged: @resume.is_flagged, profile_id: @resume.profile_id, user_id: @resume.user_id, version: @resume.version }
    end

    assert_redirected_to resume_path(assigns(:resume))
  end

  test "should show resume" do
    get :show, id: @resume
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resume
    assert_response :success
  end

  test "should update resume" do
    patch :update, id: @resume, resume: { filename: @resume.filename, format: @resume.format, generated_by: @resume.generated_by, is_approved: @resume.is_approved, is_current: @resume.is_current, is_deleted: @resume.is_deleted, is_flagged: @resume.is_flagged, profile_id: @resume.profile_id, user_id: @resume.user_id, version: @resume.version }
    assert_redirected_to resume_path(assigns(:resume))
  end

  test "should destroy resume" do
    assert_difference('Resume.count', -1) do
      delete :destroy, id: @resume
    end

    assert_redirected_to resumes_path
  end
end
