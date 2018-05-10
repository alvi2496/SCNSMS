class CreateLeaves < ActiveRecord::Migration[5.1]
  def change
    create_table :leaves do |t|
      t.belongs_to :student
      t.date :start_date
      t.date :end_date
      t.string :reason
      t.integer :duration
      t.timestamps
    end
  end
end
