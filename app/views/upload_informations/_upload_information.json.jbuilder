json.extract! upload_information, :id, :fornavn, :efternavn, :postnummer, :addresse, :user_id, :created_at, :updated_at
json.url upload_information_url(upload_information, format: :json)
