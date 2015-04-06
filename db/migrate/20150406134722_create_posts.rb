class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :joke
      t.string :answer
      t.string :image

      t.timestamps null: false
    end
  end
end
