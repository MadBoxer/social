class CreateUsersMessages < ActiveRecord::Migration
  def change
    create_table :users_messages do |t|
      t.integer :message_id
      t.integer :user_id
      t.boolean :is_read
    end
  end
end
