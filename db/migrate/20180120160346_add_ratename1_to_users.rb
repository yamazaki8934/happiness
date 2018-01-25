class AddRatename1ToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :ratename1, :string
  end
end
