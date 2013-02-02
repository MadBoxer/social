class CreateSettingImages < ActiveRecord::Migration
  def change
    create_table :setting_images do |t|
      t.integer :setting_id, :null => false
      t.string :path, :null => false

      t.timestamps
    end
  end
end
