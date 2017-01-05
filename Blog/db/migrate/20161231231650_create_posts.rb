class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.text :title
      t.text :content
      t.integer :user_id
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
    add_index :posts, [:user_id, :created_at]
  end
end
