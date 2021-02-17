class CreateFeedbacks < ActiveRecord::Migration[6.0]
  def change
    create_table :feedbacks do |t|
      t.integer :user_id
      t.integer :post_id
      t.string :comment
      t.boolean :pro
      t.boolean :con

      t.timestamps
    end
  end
end
