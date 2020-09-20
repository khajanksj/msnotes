json.extract! note, :id, :subject, :chapter_no, :chapter_name, :body, :created_at, :updated_at
json.url note_url(note, format: :json)
