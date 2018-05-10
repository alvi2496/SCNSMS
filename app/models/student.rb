class Student < ApplicationRecord
  enum payment_method: %i[cash loan]
end
