class CreateUsersUniversities < ActiveRecord::Migration
  def change
    create_table :users_universities do |t|
      t.integer :user_id
      t.integer :university_id
      t.integer :faculty_id
      t.integer :studentstatus_id

      t.timestamps
    end
  end
end
