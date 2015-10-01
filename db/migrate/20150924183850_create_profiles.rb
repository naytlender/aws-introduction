class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.text :avatar
      t.string :first_name
      t.string :second_name
      t.string :gender
      t.date :birthday
      t.integer :height
      t.integer :weight


      t.timestamps null: false
    end
  end
end
