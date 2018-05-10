class Address < ApplicationRecord
  belongs_to :student

  enum type: %i[present permanent]
end
