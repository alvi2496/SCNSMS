class CreateEducationalQualifications < ActiveRecord::Migration[5.1]
  def change
    create_table :educational_qualifications do |t|
      t.belongs_to :student
      t.string :level_of_education
      t.string :institution
      t.string :roll
      t.string :result
      t.string :year
      t.string :duration
      t.string :country_name, default: 'Bangladesh'
      t.timestamps
    end
  end
end
