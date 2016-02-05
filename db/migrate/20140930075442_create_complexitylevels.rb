class CreateComplexitylevels < ActiveRecord::Migration
  def change
    create_table :complexitylevels do |t|
      t.integer :complexitylevel

      t.timestamps
    end
  end
end
