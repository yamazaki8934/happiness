class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.text :body1
      t.text :body2
      t.text :body3

      t.timestamps
    end
  end
end
