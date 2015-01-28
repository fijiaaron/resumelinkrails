json.array!(@telephones) do |telephone|
  json.extract! telephone, :id, :number, :non_us_number, :profile_id, :type, :do_not_call, :do_not_display, :contact_id, :user_id
  json.url telephone_url(telephone, format: :json)
end
