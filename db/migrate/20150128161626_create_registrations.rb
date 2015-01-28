class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :email
      t.string :resumelink
      t.string :filename
      t.string :tmp_upload
      t.string :status
      t.string :ip_address

      t.timestamps
    end
  end
end
