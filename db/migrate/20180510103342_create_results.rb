class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.belongs_to :student
      t.string :full_mark
      t.string :achieved_mark
      t.string :referred_subjects
      t.string :remark
      t.timestamps
    end
  end
end
