class Result < ApplicationRecord
  belongs_to :student
  enum year: %i[first_year_january first_year_july second_year_january second_year_july
                third_year_january third_year_july fourth_year_january fourth_year_july]
end
