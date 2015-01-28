json.array!(@addresses) do |address|
  json.extract! address, :id, :street, :city, :state, :country, :zip, :non_us_state_province_region, :non_us_postal_code, :profile_id, :contact_id, :type, :do_not_locate, :do_not_display, :user_id
  json.url address_url(address, format: :json)
end
