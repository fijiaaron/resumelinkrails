json.array!(@emails) do |email|
  json.extract! email, :id, :email_address, :profile_id, :contact_id, :user_id
  json.url email_url(email, format: :json)
end
