class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|
      t.string :name, :null => false
      t.string :abbr, :limit => 20, :null => false
      t.integer :city_id, :null => false

      t.timestamps
    end
  end
end
