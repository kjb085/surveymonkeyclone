class UpdateSurveys < ActiveRecord::Migration
  def change
  	add_column :surveys, :yes_num, :float, default: 0
  	add_column :surveys, :no_num, :float, default: 0
  	add_column :surveys, :percent_yes, :float, default: 0
  	add_column :surveys, :num_taken, :integer, default: 0
  end
end
