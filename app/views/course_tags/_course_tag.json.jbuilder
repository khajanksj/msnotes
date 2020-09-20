json.extract! course_tag, :id, :course, :subject, :is_active, :created_at, :updated_at
json.url course_tag_url(course_tag, format: :json)
