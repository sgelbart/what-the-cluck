class CreatePredators < ActiveRecord::Migration
  def change
    create_table :predators do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
