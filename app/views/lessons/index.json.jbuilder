json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :name, :image, :video, :duration, :description, :course_id, :user_id
  json.url lesson_url(lesson, format: :json)
end
