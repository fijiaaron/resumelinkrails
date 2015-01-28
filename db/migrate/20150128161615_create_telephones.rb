class CreateTelephones < ActiveRecord::Migration
  def change
    create_table :telephones do |t|
      t.string :number
      t.string :non_us_number
      t.references :profile, index: true
      t.string :type
      t.boolean :do_not_call
      t.boolean :do_not_display
      t.references :contact, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
