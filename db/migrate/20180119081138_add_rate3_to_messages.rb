class AddRate3ToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :rate3, :integer
  end
end
