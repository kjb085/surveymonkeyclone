class CreateSkatelogs < ActiveRecord::Migration
  def change
    create_table :skatelogs do |t|
      t.string :title, null: false
      t.string :seshtime, null: false
      t.string :tricks, null: false
      t.text :description
      t.references :user
      t.timestamps
    end
  end
end
