json.extract! manager, :id, :manager_email, :manager_pw, :created_at, :updated_at
json.url manager_url(manager, format: :json)
