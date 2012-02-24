class InstitutionCategory < ActiveRecord::Base
  has_many :clients
end
