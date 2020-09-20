json.extract! course, :id, :course, :duration, :fee, :instructor, :image, :is_active, :created_at, :updated_at
json.url course_url(course, format: :json)
