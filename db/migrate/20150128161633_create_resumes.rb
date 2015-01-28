class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :filename
      t.string :format
      t.string :generated_by
      t.boolean :is_approved
      t.boolean :is_flagged
      t.boolean :is_current
      t.integer :version
      t.references :user, index: true
      t.references :profile, index: true
      t.boolean :is_deleted

      t.timestamps
    end
  end
end
