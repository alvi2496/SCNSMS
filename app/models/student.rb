class Student < ApplicationRecord
  enum payment_method: %i[cash loan]
  enum sex: %i[male female]
  enum quota: %i[poor merit freedom_fighter]
  enum religion: %i[islam hindu]
  enum marital_status: %i[single married]
end
