class AddPostModel < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :teaser
      t.text :body
      t.datetime :published_at
      t.string :state

      t.timestamps
    end
  end
end
