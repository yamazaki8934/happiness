class RemoveRate1FromMessages < ActiveRecord::Migration[5.0]
  def change
    remove_column :messages, :rate1, :integer
  end
end
