class Address < ApplicationRecord
  belongs_to :student

  enum address_type: %i[present permanent]
end
