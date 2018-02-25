class CreateHatcheries < ActiveRecord::Migration
  def change
    create_table :hatcheries do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
