json.extract! study, :id, :category_id, :study_name, :intro, :goal, :curriculem, :max_number, :status, :created_at, :updated_at
json.url study_url(study, format: :json)
