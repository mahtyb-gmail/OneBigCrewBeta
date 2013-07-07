class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :length
      t.string :project_type
      t.string :hometown
      t.text :details
      t.date :startdate
      t.text :schedule_info
      t.integer :user_id

      t.timestamps
    end
    add_index :projects, :user_id
  end
end
