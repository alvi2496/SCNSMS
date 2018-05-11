class Address < ApplicationRecord
  belongs_to :student

  enum address_type: %i[both present permanent]

  scope :present, -> { where(address_type: [:present, :both]) }
  scope :permanent, -> { where(address_type: [:permanent, :both]) }
end
