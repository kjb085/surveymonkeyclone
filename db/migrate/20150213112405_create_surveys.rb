class CreateSurveys < ActiveRecord::Migration
  def change
  	create_table :surveys do |t|
	  t.integer :user_id, null: false
	  t.string :title, null: false
	  t.integer :ans_percents, array: true
	  t.timestamps
  	end
  end
end
