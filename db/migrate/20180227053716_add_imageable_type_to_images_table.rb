class AddImageableTypeToImagesTable < ActiveRecord::Migration
  def change
    change_table :images do |t|
      t.string :imageable_type
    end
  end
end
