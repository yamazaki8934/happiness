class AddRatename3ToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :ratename3, :string
  end
end
