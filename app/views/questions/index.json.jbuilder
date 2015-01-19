json.array!(@questions) do |question|
  json.extract! question, :id, :title, :kind, :project_id
  json.url question_url(question, format: :json)
end
