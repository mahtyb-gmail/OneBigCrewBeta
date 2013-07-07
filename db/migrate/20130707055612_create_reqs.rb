class CreateReqs < ActiveRecord::Migration
  def change
    create_table :reqs do |t|
      t.integer :project_id
      t.integer :skill_id

      t.timestamps
    end
  end
end
