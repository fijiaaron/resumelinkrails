class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :profession
      t.text :description
      t.references :user, index: true

      t.timestamps
    end
  end
end
