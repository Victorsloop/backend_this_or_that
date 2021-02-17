class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.integer :wall_id
      t.string :content
      t.string :img_url

      t.timestamps
    end
  end
end
