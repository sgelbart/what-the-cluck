class CreateHatchChicks < ActiveRecord::Migration
  def change
    create_table :hatch_chicks do |t|
      t.references :hatch, index: true, foreign_key: true
      t.references :breed, index: true, foreign_key: true
      t.integer :sex

      t.timestamps null: false
    end
  end
end
