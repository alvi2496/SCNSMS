class EducationalQualification < ApplicationRecord
  belongs_to :student

  def self.store(educational_qualifications, student_id)
    educational_qualifications.each do |educational_qualification|
      eq = new(
          student_id: student_id,
          level_of_education: educational_qualification[:level_of_education],
          institution: educational_qualification[:institution],
          roll: educational_qualification[:roll],
          result: educational_qualification[:result],
          year: educational_qualification[:year],
          duration: educational_qualification[:duration],
          country_name: educational_qualification[:country_name]
      )
      eq.save
    end
  end
end
