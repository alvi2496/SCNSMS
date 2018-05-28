class Address < ApplicationRecord
  belongs_to :student

  enum address_type: %i[both present permanent]

  scope :present, -> { where(address_type: [:present, :both]) }
  scope :permanent, -> { where(address_type: [:permanent, :both]) }

  def self.save_addresses(addresses, student_id)
    addresses.each do |address, index|
      addr = new(
              student_id: student_id,
              village_house_road: address[:village_house_road],
              post_office: address[:post_office],
              postal_code: address[:postal_code],
              union: address[:union],
              district: address[:district],
              division: address[:division],
              address_type: address[:address_type]
      )
      addr.save
    end
  end

  def self.update_addresses(addresses, student_id)
    n = 1
  end
end
