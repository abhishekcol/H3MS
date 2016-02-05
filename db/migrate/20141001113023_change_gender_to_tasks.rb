class ChangeGenderToTasks < ActiveRecord::Migration
  def change
    rename_column :tasks, :gender, :gender_id
  end
end
