class AddSecretPasswordColumnToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :secret_password, :string
  end
end
