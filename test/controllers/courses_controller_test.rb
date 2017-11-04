require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get courses_url
    assert_response :success
  end

  test "should get new" do
    get new_course_url
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post courses_url, params: { course: { classroom: @course.classroom, course_code: @course.course_code, course_time: @course.course_time, course_type: @course.course_type, course_week: @course.course_week, credit: @course.credit, exam_type: @course.exam_type, limit_num: @course.limit_num, name: @course.name, student_num: @course.student_num, teaching_type: @course.teaching_type } }
    end

    assert_redirected_to course_url(Course.last)
  end

  test "should show course" do
    get course_url(@course)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_url(@course)
    assert_response :success
  end

  test "should update course" do
    patch course_url(@course), params: { course: { classroom: @course.classroom, course_code: @course.course_code, course_time: @course.course_time, course_type: @course.course_type, course_week: @course.course_week, credit: @course.credit, exam_type: @course.exam_type, limit_num: @course.limit_num, name: @course.name, student_num: @course.student_num, teaching_type: @course.teaching_type } }
    assert_redirected_to course_url(@course)
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete course_url(@course)
    end

    assert_redirected_to courses_url
  end
end
