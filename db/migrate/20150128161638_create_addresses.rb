class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.string :state
      t.string :country
      t.string :zip
      t.string :non_us_state_province_region
      t.string :non_us_postal_code
      t.references :profile, index: true
      t.references :contact, index: true
      t.string :type
      t.boolean :do_not_locate
      t.boolean :do_not_display
      t.references :user, index: true

      t.timestamps
    end
  end
end
