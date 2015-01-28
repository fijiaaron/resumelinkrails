json.array!(@resumes) do |resume|
  json.extract! resume, :id, :filename, :format, :generated_by, :is_approved, :is_flagged, :is_current, :version, :user_id, :profile_id, :is_deleted
  json.url resume_url(resume, format: :json)
end
