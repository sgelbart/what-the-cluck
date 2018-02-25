class CreateHatches < ActiveRecord::Migration
  def change
    create_table :hatches do |t|
      t.string :name
      t.text :description
      t.datetime :hatched_at
      t.integer :chicken_amount
      t.references :hatchery, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
