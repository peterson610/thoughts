class AddInfoBlocks < ActiveRecord::Migration
  def change
    create_table :info_blocks do |t|
      t.string :title
      t.string :picture
      t.string :kind
      t.text :body

      t.timestamps
    end
  end
end
