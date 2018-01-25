class AddRatename5ToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :ratename5, :string
  end
end
