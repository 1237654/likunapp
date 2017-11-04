json.extract! course, :id, :name, :course_code, :course_type, :teaching_type, :exam_type, :credit, :limit_num, :student_num, :classroom, :course_time, :course_week, :created_at, :updated_at
json.url course_url(course, format: :json)
