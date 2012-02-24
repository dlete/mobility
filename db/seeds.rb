# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

InstitutionCategory.delete_all
InstitutionCategory.create(:category => "University")
InstitutionCategory.create(:category => "Third Level College")
InstitutionCategory.create(:category => "Institute of Technology")
InstitutionCategory.create(:category => "Vocational Education Committee")
InstitutionCategory.create(:category => "Other")

MbbChannel.delete_all
MbbChannel.create(:name => "Retail")
MbbChannel.create(:name => "Campus")
MbbChannel.create(:name => "Franchise")
MbbChannel.create(:name => "Online")
MbbChannel.create(:name => "CPW")

MbbProduct.delete_all
MbbProduct.create(:name => "Prepay Voice Data Add On")
MbbProduct.create(:name => "Postpay Voice Data Add On")
MbbProduct.create(:name => "Postpay MBB")
MbbProduct.create(:name => "#N/A")
MbbProduct.create(:name => "Prepay MBB")

MbbSeason.delete_all
MbbSeason.create(:season_begin => "2008-09-01", season_end: "2009-08-31")
MbbSeason.create(:season_begin => "2009-09-01", season_end: "2010-08-31")
MbbSeason.create(:season_begin => "2010-09-01", season_end: "2011-08-31")
MbbSeason.create(:season_begin => "2011-09-01", season_end: "2012-08-31")
