class AddRatename2ToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :ratename2, :string
  end
end
