class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :material_type
      t.boolean :active
      t.boolean :trash

      t.timestamps
    end
  end
end
