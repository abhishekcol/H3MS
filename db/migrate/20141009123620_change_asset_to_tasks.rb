class ChangeAssetToTasks < ActiveRecord::Migration
  def change
    change_column :tasks, :asset, :string
  end
end
