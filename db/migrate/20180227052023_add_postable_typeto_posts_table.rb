class AddPostableTypetoPostsTable < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      t.string :postable_type
    end
  end
end