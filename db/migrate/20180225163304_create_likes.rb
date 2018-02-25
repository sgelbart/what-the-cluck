class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.reference :user
      t.reference :post

      t.timestamps null: false
    end
  end
end
