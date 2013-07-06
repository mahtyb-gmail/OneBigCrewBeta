class CreateBios < ActiveRecord::Migration
  def change
    create_table :bios do |t|
      t.integer :user_id
      t.integer :skill_id

      t.timestamps
    end
  end
end
