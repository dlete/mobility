class Institution < ActiveRecord::Base
  belongs_to :institution_category

  has_many :institution_abbreviations
end
