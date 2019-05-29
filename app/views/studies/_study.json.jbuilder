json.extract! study, :id, :study_name, :intro, :goal, :curriculum, :max_number, :status, :created_at, :updated_at
json.url study_url(study, format: :json)
