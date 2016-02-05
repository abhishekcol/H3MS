class AddGenderIdToGenders < ActiveRecord::Migration
  def change
    add_column :genders, :gender_id, :integer
  end
end
