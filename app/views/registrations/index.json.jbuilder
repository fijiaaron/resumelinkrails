json.array!(@registrations) do |registration|
  json.extract! registration, :id, :name, :email, :resumelink, :filename, :tmp_upload, :status, :ip_address
  json.url registration_url(registration, format: :json)
end
