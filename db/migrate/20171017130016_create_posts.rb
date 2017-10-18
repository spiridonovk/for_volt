class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :user_id
      t.string :author
      t.datetime :published_at

      t.timestamps
    end
  end
end
