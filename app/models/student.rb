class Student < ApplicationRecord
  has_many :addresses, dependent: :destroy
  accepts_nested_attributes_for :addresses
  has_many :educational_qualifications, dependent: :destroy
  accepts_nested_attributes_for :educational_qualifications
  has_many :leaves, dependent: :destroy
  accepts_nested_attributes_for :leaves
  has_many :show_causes, dependent: :destroy
  accepts_nested_attributes_for :show_causes
  has_many :results, dependent: :destroy
  accepts_nested_attributes_for :results

  enum payment_method: %i[cash loan]
  enum sex: %i[male female]
  enum quota: %i[poor_and_merit poor merit freedom_fighter none]
  enum religion: %i[islam hindu christian buddhist other]
  enum marital_status: %i[single married]
  enum blood_group: %i[O−	O+	A−	A+	B−	B+	AB−	AB+]

  has_attached_file :avatar, default_url: '/assets/user-missing.png'
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
