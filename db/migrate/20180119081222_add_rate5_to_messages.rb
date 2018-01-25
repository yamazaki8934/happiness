class AddRate5ToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :rate5, :integer
  end
end
