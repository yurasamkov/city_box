class AddUserId < ActiveRecord::Migration
  def change
  	add_column :comments, :user_id, :datetime
  end
end
