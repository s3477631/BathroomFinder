json.extract! userlocation, :id, :lat, :lng, :user_id, :created_at, :updated_at
json.url userlocation_url(userlocation, format: :json)
