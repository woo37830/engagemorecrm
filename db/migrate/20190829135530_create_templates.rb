class CreateTemplates < ActiveRecord::Migration[5.1]
  def change
    create_table :templates do |t|
      t.string :name
      t.string :category
      t.string :level
      t.string :message

      t.timestamps
    end
  end
end
