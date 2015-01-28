class CreateResumelinks < ActiveRecord::Migration
  def change
    create_table :resumelinks do |t|
      t.string :resumelink
      t.string :default_resume_format
      t.boolean :show_profile
      t.boolean :show_resume
      t.boolean :download_automatically
      t.references :user, index: true
      t.references :profile, index: true

      t.timestamps
    end
  end
end
