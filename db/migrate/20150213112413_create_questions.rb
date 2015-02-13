class CreateQuestions < ActiveRecord::Migration
  def change
  	create_table :questions do |t|
  	  t.integer :survey_id, null: false
  	  t.text :content, null: false
  	  t.integer :num_yes, default: 0
  	  t.integer :num_no, default: 0
  	  t.timestamps
  	end
  end
end
