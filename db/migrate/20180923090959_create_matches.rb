class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.integer :saki, null: false

      t.timestamps
    end
  end
end
