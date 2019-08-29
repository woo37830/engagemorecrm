class CreateDoables < ActiveRecord::Migration[5.1]
  def change
    create_table :doables do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
