class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.string :shiftname
      t.string :shortcode
      t.string :colorcode
      t.time :shiftstarttime
      t.time :shiftendtime
      t.time :mealstarttime
      t.time :mealendtime

      t.timestamps
    end
  end
end
