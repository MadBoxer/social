class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, :limit => 50, :null => false
      t.string :surname, :limit => 50, :null => false
      t.string :email, :null => false
      t.string :password, :limit => 50, :null => false
      t.integer :marital_status_id
      t.integer :city_id
      t.string :mobile_phone, :limit => 20
      t.string :skype
      t.string :web_site
      t.integer :sex
      t.integer :politic_id
      t.integer :religion_id
      t.string :activities, :limit => 2500
      t.string :favourite_films, :limit => 2500
      t.string :favourite_books, :limit => 2500
      t.string :favourite_tv_shows, :limit => 2500
      t.string :favourite_games, :limit => 2500
      t.text :favourite_phrases
      t.text :about_myself
      t.string :avatar
      t.boolean :active, :default => 1
      t.boolean :trash, :default => 0
      t.integer :material_id, :null => false

      t.timestamps
    end
    #execute "ALTER TABLE user_attrs ADD CONSTRAINT fk_material FOREIGN KEY (material_id) REFERENCES materials(id)"
  end
end
