class AddDetailsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :fullname, :string
    add_column :users, :description, :string
  end
end
