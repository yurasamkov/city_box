class AddHistoryColumnToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :history, :datetime
  end
end
