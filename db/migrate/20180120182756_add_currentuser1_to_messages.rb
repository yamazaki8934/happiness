class AddCurrentuser1ToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :currentuser_id, :integer
  end
end
