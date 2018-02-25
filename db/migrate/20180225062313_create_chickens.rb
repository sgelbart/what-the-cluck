class CreateChickens < ActiveRecord::Migration
  def change
    create_table :chickens do |t|
      t.string :name
      t.text :description
      t.references :hatch, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
