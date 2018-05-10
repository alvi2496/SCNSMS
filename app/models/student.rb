class Student < ApplicationRecord
  has_many :addresses
  accepts_nested_attributes_for :addresses

  enum payment_method: %i[cash loan]
  enum sex: %i[male female]
  enum quota: %i[poor merit freedom_fighter]
  enum religion: %i[islam hindu]
  enum marital_status: %i[single married]

  has_attached_file :avatar, styles: { medium: '300x300>' }, default_url: '/images/:style/missing.png'
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
