class Client < ActiveRecord::Base
  belongs_to :institution_category

  has_many :mbb_institution_abbreviations
end
