class AddCurrentuserToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :currentuser_id, :string
  end
end
