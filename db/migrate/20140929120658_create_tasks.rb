class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :taskname
      t.string :taskinotherlanguage
      t.string :taskdesc
      t.string :shortname
      t.integer :complexitylvl
      t.integer :taskpriority
      t.integer :gender
      t.integer :asset

      t.timestamps
    end
  end
end
