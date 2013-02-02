class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name, :limit => 25, :null => false
      t.string :alias, :limit => 25, :null => false
      t.integer :country_id, :null => false
      t.string :city_image

      t.timestamps
    end
  end
end
