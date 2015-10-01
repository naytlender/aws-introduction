class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.text :avatar
      t.string :first_name
      t.string :second_name
      t.string :gender
      t.date :birthday
      t.integer :height
      t.integer :weight


      t.timestamps null: false
    end

    add_index :profiles, :user_id

  end
end
