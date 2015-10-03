class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.string :link
      t.string :video_url
      t.string :preview_image
      t.text :body
      t.boolean :is_published, default: false

      t.timestamps
    end
  end
end
