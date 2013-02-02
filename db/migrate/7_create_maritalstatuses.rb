class CreateMaritalstatuses < ActiveRecord::Migration
  def change
    create_table :maritalstatuses do |t|
      t.string :name, :null => false
      t.enum :sex,:limit => [:w, :m, :u], :null => false

      t.timestamps
    end
  end
end
