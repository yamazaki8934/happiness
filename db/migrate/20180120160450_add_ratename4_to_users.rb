class AddRatename4ToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :ratename4, :string
  end
end
