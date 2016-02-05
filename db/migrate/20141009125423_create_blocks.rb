class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.string :name
      t.string :short_name
      t.string :code
      t.integer :attention_level
      t.boolean :active

      t.timestamps
    end
  end
end
