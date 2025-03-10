class CreateItems < ActiveRecord::Migration[8.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.boolean :enabled, default: true

      t.timestamps
    end
  end
end
