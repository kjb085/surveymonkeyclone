class UpdateSurveysAgain < ActiveRecord::Migration
  def change
  	remove_column :surveys, :percent_yes
  	change_column :surveys, :yes_num, :integer
  	change_column :surveys, :no_num, :integer
  end
end
