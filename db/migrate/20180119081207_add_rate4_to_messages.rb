class AddRate4ToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :rate4, :integer
  end
end
