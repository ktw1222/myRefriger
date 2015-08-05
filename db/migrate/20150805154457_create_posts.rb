class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.string :photo_url
      t.text :content
      t.timestamps
    end
  end
end
