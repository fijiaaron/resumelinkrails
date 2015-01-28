ActiveAdmin.register Address do
  permit_params :street, :city, :state, :country, :zip, :non_us_state_province_region, :non_us_postal_code, :type, :do_not_locate, :do_not_display


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
