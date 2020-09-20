require "application_system_test_case"

class CourseTagsTest < ApplicationSystemTestCase
  setup do
    @course_tag = course_tags(:one)
  end

  test "visiting the index" do
    visit course_tags_url
    assert_selector "h1", text: "Course Tags"
  end

  test "creating a Course tag" do
    visit course_tags_url
    click_on "New Course Tag"

    fill_in "Course", with: @course_tag.course
    check "Is active" if @course_tag.is_active
    fill_in "Subject", with: @course_tag.subject
    click_on "Create Course tag"

    assert_text "Course tag was successfully created"
    click_on "Back"
  end

  test "updating a Course tag" do
    visit course_tags_url
    click_on "Edit", match: :first

    fill_in "Course", with: @course_tag.course
    check "Is active" if @course_tag.is_active
    fill_in "Subject", with: @course_tag.subject
    click_on "Update Course tag"

    assert_text "Course tag was successfully updated"
    click_on "Back"
  end

  test "destroying a Course tag" do
    visit course_tags_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Course tag was successfully destroyed"
  end
end
