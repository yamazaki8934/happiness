class AddRate2ToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :rate2, :integer
  end
end
