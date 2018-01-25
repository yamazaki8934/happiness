class AddRate1ToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :rate1, :integer
  end
end
