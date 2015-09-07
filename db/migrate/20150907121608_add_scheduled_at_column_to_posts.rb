class AddScheduledAtColumnToPosts < ActiveRecord::Migration

  def change
    add_column :posts, :scheduled_at, :string
  end

end
