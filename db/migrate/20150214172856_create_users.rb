class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :username, null: false
      t.string :boardtype, null: false
      t.string :profpic
      t.string :password_digest, null: false
      t.timestamps
    end
  end
end
