class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name, :null => false
      t.string :alias, :null => false
      t.string :announce, :limit => 512
      t.text :description, :limit => 1500
      t.integer :user_id
      t.integer :group_id 

      t.timestamps
    end
  end
end
