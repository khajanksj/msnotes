require 'test_helper'

class CourseTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course_tag = course_tags(:one)
  end

  test "should get index" do
    get course_tags_url
    assert_response :success
  end

  test "should get new" do
    get new_course_tag_url
    assert_response :success
  end

  test "should create course_tag" do
    assert_difference('CourseTag.count') do
      post course_tags_url, params: { course_tag: { course: @course_tag.course, is_active: @course_tag.is_active, subject: @course_tag.subject } }
    end

    assert_redirected_to course_tag_url(CourseTag.last)
  end

  test "should show course_tag" do
    get course_tag_url(@course_tag)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_tag_url(@course_tag)
    assert_response :success
  end

  test "should update course_tag" do
    patch course_tag_url(@course_tag), params: { course_tag: { course: @course_tag.course, is_active: @course_tag.is_active, subject: @course_tag.subject } }
    assert_redirected_to course_tag_url(@course_tag)
  end

  test "should destroy course_tag" do
    assert_difference('CourseTag.count', -1) do
      delete course_tag_url(@course_tag)
    end

    assert_redirected_to course_tags_url
  end
end
