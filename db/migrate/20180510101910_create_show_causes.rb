class CreateShowCauses < ActiveRecord::Migration[5.1]
  def change
    create_table :show_causes do |t|
      t.belongs_to :student
      t.date :date
      t.text :reason
      t.timestamps
    end
  end
end
