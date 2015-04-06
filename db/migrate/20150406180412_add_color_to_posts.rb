class AddColorToPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :start_color, :string
  	add_column :posts, :end_color, :string
  end
end
