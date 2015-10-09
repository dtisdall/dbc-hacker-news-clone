class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :url, null: false
      t.string :title, null: false
      t.belongs_to :user, index: true
 
      t.timestamps null: false
    end
  end
end
