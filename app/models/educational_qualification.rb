class EducationalQualification < ApplicationRecord
  belongs_to :student

  enum board: %i[dhaka chittagong rajshahi barishal jessore comilla mymenshingh
                sylhet dinajpur technical madrasah]
  enum group: %i[science humanities business_studies vocational other]
end
