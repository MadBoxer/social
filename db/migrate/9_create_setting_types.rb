class CreateSettingTypes < ActiveRecord::Migration
  def change
    create_table :setting_types do |t|
      t.string :name, :limit => 20, :null => false
      t.string :alias, :limit => 20, :null => false
    end
  end
end
