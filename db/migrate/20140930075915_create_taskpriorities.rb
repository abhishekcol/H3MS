class CreateTaskpriorities < ActiveRecord::Migration
  def change
    create_table :taskpriorities do |t|
      t.integer :priority

      t.timestamps
    end
  end
end
