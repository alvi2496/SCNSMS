class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.belongs_to :student
      t.string :village_house_road
      t.string :post_office
      t.string :postal_code
      t.string :union
      t.string :district
      t.string :division
      t.integer :address_type
      t.timestamps
    end
  end
end
