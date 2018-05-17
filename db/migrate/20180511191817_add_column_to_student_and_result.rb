class AddColumnToStudentAndResult < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :roll, :string
    add_column :results, :year, :integer
  end
end
