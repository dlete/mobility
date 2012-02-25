class Institution < ActiveRecord::Base
  belongs_to :institution_category

  has_many :institution_populations
  has_many :mbb_institution_abbreviations
end
