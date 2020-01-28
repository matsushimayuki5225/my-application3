class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :message ,null: false
      t.string :nickname ,null: false
      t.timestamps
    end
  end
end