class AddPTypeColumnToPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :p_type, :string
  end
end
