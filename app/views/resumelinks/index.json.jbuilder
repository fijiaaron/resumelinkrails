json.array!(@resumelinks) do |resumelink|
  json.extract! resumelink, :id, :resumelink, :default_resume_format, :show_profile, :show_resume, :download_automatically, :user_id, :profile_id
  json.url resumelink_url(resumelink, format: :json)
end
