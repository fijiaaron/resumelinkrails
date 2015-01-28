class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :email_address
      t.references :profile, index: true
      t.references :contact, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
