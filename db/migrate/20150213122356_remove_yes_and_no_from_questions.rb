class RemoveYesAndNoFromQuestions < ActiveRecord::Migration
  def change
  	remove_column :questions, :num_yes
  	remove_column :questions, :num_no
  end
end
