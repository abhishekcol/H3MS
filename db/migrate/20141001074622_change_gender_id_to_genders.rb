class ChangeGenderIdToGenders < ActiveRecord::Migration
  def change
    rename_column :genders, :gender_id, :task_id
  end
end
