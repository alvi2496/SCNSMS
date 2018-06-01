class AddColumnsGroupAndBoardToEducationalQualifications < ActiveRecord::Migration[5.1]
  def change
    add_column :educational_qualifications, :board, :integer
    add_column :educational_qualifications, :group, :integer
  end
end
