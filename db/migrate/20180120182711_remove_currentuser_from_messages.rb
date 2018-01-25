class RemoveCurrentuserFromMessages < ActiveRecord::Migration[5.0]
  def change
    remove_column :messages, :currentuser_id, :string
  end
end
