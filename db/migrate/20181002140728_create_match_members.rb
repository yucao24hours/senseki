class CreateMatchMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :match_members do |t|
      t.references :member, foreign_key: true
      t.references :match, foreign_key: true

      t.timestamps
    end
  end
end
