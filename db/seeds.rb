# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

InstitutionCategory.delete_all
InstitutionCategory.create(:name => "University", :abbreviation => "uni")
InstitutionCategory.create(:name => "Third Level College", :abbreviation => "tlc")
InstitutionCategory.create(:name => "Institute of Technology", :abbreviation => "iot")
InstitutionCategory.create(:name => "Vocational Education Committee", :abbreviation => "vec")
InstitutionCategory.create(:name => "Other", :abbreviation => "oo")

Institution.delete_all
Institution.create(:name => "Unknown", :institution_category_id => InstitutionCategory.find_by_abbreviation("oo").id, :abbreviation => "UNKNOWN")
Institution.create(:name => "Dublin City University", :institution_category_id => InstitutionCategory.find_by_abbreviation("uni").id, :abbreviation => "DCU")
Institution.create(:name => "NUI Galway", :institution_category_id => InstitutionCategory.find_by_abbreviation("uni").id, :abbreviation => "NUIG")
Institution.create(:name => "NUI Maynooth", :institution_category_id => InstitutionCategory.find_by_abbreviation("uni").id, :abbreviation => "NUIM")
Institution.create(:name => "Trinity College Dublin", :institution_category_id => InstitutionCategory.find_by_abbreviation("uni").id, :abbreviation => "TCD")
Institution.create(:name => "University College Cork", :institution_category_id => InstitutionCategory.find_by_abbreviation("uni").id, :abbreviation => "UCC")
Institution.create(:name => "University College Dublin", :institution_category_id => InstitutionCategory.find_by_abbreviation("uni").id, :abbreviation => "UCD")
Institution.create(:name => "University of Limerick", :institution_category_id => InstitutionCategory.find_by_abbreviation("uni").id, :abbreviation => "UL")
Institution.create(:name => "Carlow College", :institution_category_id => InstitutionCategory.find_by_abbreviation("tlc").id, :abbreviation => "CARLOWC")
Institution.create(:name => "College of Anaesthetists of Ireland", :institution_category_id => InstitutionCategory.find_by_abbreviation("tlc").id, :abbreviation => "COA")
Institution.create(:name => "National College of Art and Design", :institution_category_id => InstitutionCategory.find_by_abbreviation("tlc").id, :abbreviation => "NCAD")
Institution.create(:name => "National College of Ireland", :institution_category_id => InstitutionCategory.find_by_abbreviation("tlc").id, :abbreviation => "NCI")
Institution.create(:name => "Royal College of Physicians of Ireland", :institution_category_id => InstitutionCategory.find_by_abbreviation("tlc").id, :abbreviation => "RCPI")
Institution.create(:name => "Royal College of Surgeons in Ireland", :institution_category_id => InstitutionCategory.find_by_abbreviation("tlc").id, :abbreviation => "RCSI")
Institution.create(:name => "St. Patricks College, Thurles, Co. Tipperary", :institution_category_id => InstitutionCategory.find_by_abbreviation("tlc").id, :abbreviation => "STPATS")
Institution.create(:name => "Athlone IT", :institution_category_id => InstitutionCategory.find_by_abbreviation("iot").id, :abbreviation => "AIT")
Institution.create(:name => "Cork IT", :institution_category_id => InstitutionCategory.find_by_abbreviation("iot").id, :abbreviation => "CIT")
Institution.create(:name => "DIT", :institution_category_id => InstitutionCategory.find_by_abbreviation("iot").id, :abbreviation => "DIT")
Institution.create(:name => "Dundalk IT", :institution_category_id => InstitutionCategory.find_by_abbreviation("iot").id, :abbreviation => "DKIT")
Institution.create(:name => "Galway-Mayo IT", :institution_category_id => InstitutionCategory.find_by_abbreviation("iot").id, :abbreviation => "GMIT")
Institution.create(:name => "Institute of Art, Design and Technology, Dun Laoghaire", :institution_category_id => InstitutionCategory.find_by_abbreviation("iot").id, :abbreviation => "IADT")
Institution.create(:name => "Institutes of Technology Ireland", :institution_category_id => InstitutionCategory.find_by_abbreviation("iot").id, :abbreviation => "IOTI")
Institution.create(:name => "IT Blanchardstown", :institution_category_id => InstitutionCategory.find_by_abbreviation("iot").id, :abbreviation => "ITB")
Institution.create(:name => "IT Carlow", :institution_category_id => InstitutionCategory.find_by_abbreviation("iot").id, :abbreviation => "ITC")
Institution.create(:name => "IT Sligo", :institution_category_id => InstitutionCategory.find_by_abbreviation("iot").id, :abbreviation => "ITS")
Institution.create(:name => "IT Tallaght", :institution_category_id => InstitutionCategory.find_by_abbreviation("iot").id, :abbreviation => "ITTALLAGHT")
Institution.create(:name => "IT Tralee", :institution_category_id => InstitutionCategory.find_by_abbreviation("iot").id, :abbreviation => "ITT")
Institution.create(:name => "Letterkenny IT", :institution_category_id => InstitutionCategory.find_by_abbreviation("iot").id, :abbreviation => "LYIT")
Institution.create(:name => "Limerick IT", :institution_category_id => InstitutionCategory.find_by_abbreviation("iot").id, :abbreviation => "LIT")
Institution.create(:name => "Waterford IT", :institution_category_id => InstitutionCategory.find_by_abbreviation("iot").id, :abbreviation => "WIT")
Institution.create(:name => "Cavan VEC", :institution_category_id => InstitutionCategory.find_by_abbreviation("vec").id, :abbreviation => "CAVANVEC")
Institution.create(:name => "Cork VEC - Administrative Office", :institution_category_id => InstitutionCategory.find_by_abbreviation("vec").id, :abbreviation => "CORKVEC")
Institution.create(:name => "City of Dublin VEC", :institution_category_id => InstitutionCategory.find_by_abbreviation("vec").id, :abbreviation => "CDVEC")
Institution.create(:name => "City of Limerick VEC", :institution_category_id => InstitutionCategory.find_by_abbreviation("vec").id, :abbreviation => "CLVEC")
Institution.create(:name => "Colaiste Stiofain Naofa", :institution_category_id => InstitutionCategory.find_by_abbreviation("vec").id, :abbreviation => "CSN")
Institution.create(:name => "Kildare VEC", :institution_category_id => InstitutionCategory.find_by_abbreviation("vec").id, :abbreviation => "CKVEC")
Institution.create(:name => "Meath VEC", :institution_category_id => InstitutionCategory.find_by_abbreviation("vec").id, :abbreviation => "MEATHVEC")
Institution.create(:name => "Offaly VEC", :institution_category_id => InstitutionCategory.find_by_abbreviation("vec").id, :abbreviation => "COVEC")
Institution.create(:name => "St John's Central College", :institution_category_id => InstitutionCategory.find_by_abbreviation("vec").id, :abbreviation => "SJC")
Institution.create(:name => "An Cheim", :institution_category_id => InstitutionCategory.find_by_abbreviation("oo").id, :abbreviation => "ANCHEIM")
Institution.create(:name => "Central Applications Office", :institution_category_id => InstitutionCategory.find_by_abbreviation("oo").id, :abbreviation => "CAO")
Institution.create(:name => "Dublin Institute for Advanced Studies", :institution_category_id => InstitutionCategory.find_by_abbreviation("oo").id, :abbreviation => "DIAS")
Institution.create(:name => "Environmental Protection Agency", :institution_category_id => InstitutionCategory.find_by_abbreviation("oo").id, :abbreviation => "EPA")
Institution.create(:name => "Economic and Social Research Institute", :institution_category_id => InstitutionCategory.find_by_abbreviation("oo").id, :abbreviation => "ESRI")
Institution.create(:name => "Further Education and Training Awards Council", :institution_category_id => InstitutionCategory.find_by_abbreviation("oo").id, :abbreviation => "FETAC")
Institution.create(:name => "Grangegorman Development Agency", :institution_category_id => InstitutionCategory.find_by_abbreviation("oo").id, :abbreviation => "GDA")
Institution.create(:name => "Georgia Tech Ireland", :institution_category_id => InstitutionCategory.find_by_abbreviation("oo").id, :abbreviation => "GTI")
Institution.create(:name => "Health Research Board", :institution_category_id => InstitutionCategory.find_by_abbreviation("oo").id, :abbreviation => "HRB")
Institution.create(:name => "Higher Education Authority", :institution_category_id => InstitutionCategory.find_by_abbreviation("oo").id, :abbreviation => "HEA")
Institution.create(:name => "Hermes (NCTE)", :institution_category_id => InstitutionCategory.find_by_abbreviation("oo").id, :abbreviation => "NCTE")
Institution.create(:name => "Higher Education and Training Awards Council", :institution_category_id => InstitutionCategory.find_by_abbreviation("oo").id, :abbreviation => "HETAC")
Institution.create(:name => "ICHEC", :institution_category_id => InstitutionCategory.find_by_abbreviation("oo").id, :abbreviation => "ICHEC")
Institution.create(:name => "IE Domain Registry", :institution_category_id => InstitutionCategory.find_by_abbreviation("oo").id, :abbreviation => "IEDR")
Institution.create(:name => "Institute of Public Administration", :institution_category_id => InstitutionCategory.find_by_abbreviation("oo").id, :abbreviation => "IPA")
Institution.create(:name => "Irish Universities Association", :institution_category_id => InstitutionCategory.find_by_abbreviation("oo").id, :abbreviation => "IUA")
Institution.create(:name => "IVEA", :institution_category_id => InstitutionCategory.find_by_abbreviation("oo").id, :abbreviation => "IVEA")
Institution.create(:name => "Marine Institute", :institution_category_id => InstitutionCategory.find_by_abbreviation("oo").id, :abbreviation => "MI")
Institution.create(:name => "National Cancer Registry, Ireland", :institution_category_id => InstitutionCategory.find_by_abbreviation("oo").id, :abbreviation => "NCRI")
Institution.create(:name => "National Centre for Technology in Education", :institution_category_id => InstitutionCategory.find_by_abbreviation("oo").id, :abbreviation => "NCTE")
Institution.create(:name => "National University of Ireland", :institution_category_id => InstitutionCategory.find_by_abbreviation("oo").id, :abbreviation => "NUI")
Institution.create(:name => "National Digital Research Centre", :institution_category_id => InstitutionCategory.find_by_abbreviation("oo").id, :abbreviation => "NDRC")
Institution.create(:name => "National Qualifications Authority of Ireland", :institution_category_id => InstitutionCategory.find_by_abbreviation("oo").id, :abbreviation => "NQAI")
Institution.create(:name => "Post-Graduate Applications Centre", :institution_category_id => InstitutionCategory.find_by_abbreviation("oo").id, :abbreviation => "PAC")
Institution.create(:name => "Royal Irish Academy", :institution_category_id => InstitutionCategory.find_by_abbreviation("oo").id, :abbreviation => "RIA")
Institution.create(:name => "St Angela's College", :institution_category_id => InstitutionCategory.find_by_abbreviation("oo").id, :abbreviation => "STACS")
Institution.create(:name => "Ballyfermot College of Further Education", :institution_category_id => InstitutionCategory.find_by_abbreviation("vec").id, :abbreviation => "BCFE")
Institution.create(:name => "HEAnet", :institution_category_id => InstitutionCategory.find_by_abbreviation("oo").id, :abbreviation => "HEANET")


MbbInstitutionAbbreviation.delete_all
MbbInstitutionAbbreviation.create(:abbreviation => "", :institution_id => Institution.find_by_abbreviation("UNKNOWN").id)
MbbInstitutionAbbreviation.create(:abbreviation => "-1" , :institution_id => Institution.find_by_abbreviation("UNKNOWN").id)
MbbInstitutionAbbreviation.create(:abbreviation => "AD" , :institution_id => Institution.find_by_abbreviation("NCAD").id)
MbbInstitutionAbbreviation.create(:abbreviation => "AL" , :institution_id => Institution.find_by_abbreviation("AIT").id)
MbbInstitutionAbbreviation.create(:abbreviation => "AS" , :institution_id => Institution.find_by_abbreviation("STACS").id)
MbbInstitutionAbbreviation.create(:abbreviation => "BCFE" , :institution_id => Institution.find_by_abbreviation("BCFE").id)
MbbInstitutionAbbreviation.create(:abbreviation => "BN" , :institution_id => Institution.find_by_abbreviation("ITB").id)
MbbInstitutionAbbreviation.create(:abbreviation => "CDVEC" , :institution_id => Institution.find_by_abbreviation("CDVEC").id)
MbbInstitutionAbbreviation.create(:abbreviation => "CHEIM" , :institution_id => Institution.find_by_abbreviation("ANCHEIM").id)
MbbInstitutionAbbreviation.create(:abbreviation => "CK" , :institution_id => Institution.find_by_abbreviation("UCC").id)
MbbInstitutionAbbreviation.create(:abbreviation => "CR" , :institution_id => Institution.find_by_abbreviation("CIT").id)
MbbInstitutionAbbreviation.create(:abbreviation => "CSN" , :institution_id => Institution.find_by_abbreviation("CSN").id)
MbbInstitutionAbbreviation.create(:abbreviation => "CVEC" , :institution_id => Institution.find_by_abbreviation("CDVEC").id)
MbbInstitutionAbbreviation.create(:abbreviation => "CW" , :institution_id => Institution.find_by_abbreviation("ITC").id)
MbbInstitutionAbbreviation.create(:abbreviation => "DC" , :institution_id => Institution.find_by_abbreviation("DCU").id)
MbbInstitutionAbbreviation.create(:abbreviation => "DK" , :institution_id => Institution.find_by_abbreviation("DKIT").id)
MbbInstitutionAbbreviation.create(:abbreviation => "DL" , :institution_id => Institution.find_by_abbreviation("IADT").id)
MbbInstitutionAbbreviation.create(:abbreviation => "DN" , :institution_id => Institution.find_by_abbreviation("UCD").id)
MbbInstitutionAbbreviation.create(:abbreviation => "DIAS" , :institution_id => Institution.find_by_abbreviation("DIAS").id)
MbbInstitutionAbbreviation.create(:abbreviation => "dit" , :institution_id => Institution.find_by_abbreviation("DIT").id)
MbbInstitutionAbbreviation.create(:abbreviation => "DKIT" , :institution_id => Institution.find_by_abbreviation("DKIT").id)
MbbInstitutionAbbreviation.create(:abbreviation => "DT" , :institution_id => Institution.find_by_abbreviation("DIT").id)
MbbInstitutionAbbreviation.create(:abbreviation => "EPA" , :institution_id => Institution.find_by_abbreviation("EPA").id)
MbbInstitutionAbbreviation.create(:abbreviation => "FETAC" , :institution_id => Institution.find_by_abbreviation("FETAC").id)
MbbInstitutionAbbreviation.create(:abbreviation => "GA" , :institution_id => Institution.find_by_abbreviation("GMIT").id)
MbbInstitutionAbbreviation.create(:abbreviation => "GY" , :institution_id => Institution.find_by_abbreviation("NUIG").id)
MbbInstitutionAbbreviation.create(:abbreviation => "HEA" , :institution_id => Institution.find_by_abbreviation("HEA").id)
MbbInstitutionAbbreviation.create(:abbreviation => "HEANET" , :institution_id => Institution.find_by_abbreviation("HEANET").id)
MbbInstitutionAbbreviation.create(:abbreviation => "HETAC" , :institution_id => Institution.find_by_abbreviation("HETAC").id)
MbbInstitutionAbbreviation.create(:abbreviation => "HRB" , :institution_id => Institution.find_by_abbreviation("HRB").id)
MbbInstitutionAbbreviation.create(:abbreviation => "IAS" , :institution_id => Institution.find_by_abbreviation("DIAS").id)
MbbInstitutionAbbreviation.create(:abbreviation => "IOTI" , :institution_id => Institution.find_by_abbreviation("IOTI").id)
MbbInstitutionAbbreviation.create(:abbreviation => "IPA" , :institution_id => Institution.find_by_abbreviation("IPA").id)
MbbInstitutionAbbreviation.create(:abbreviation => "LC" , :institution_id => Institution.find_by_abbreviation("LIT").id)
MbbInstitutionAbbreviation.create(:abbreviation => "LIT" , :institution_id => Institution.find_by_abbreviation("LIT").id)
MbbInstitutionAbbreviation.create(:abbreviation => "LM" , :institution_id => Institution.find_by_abbreviation("UL").id)
MbbInstitutionAbbreviation.create(:abbreviation => "LY" , :institution_id => Institution.find_by_abbreviation("LYIT").id)
MbbInstitutionAbbreviation.create(:abbreviation => "MARINE" , :institution_id => Institution.find_by_abbreviation("MI").id)
MbbInstitutionAbbreviation.create(:abbreviation => "MH" , :institution_id => Institution.find_by_abbreviation("NUIM").id)
MbbInstitutionAbbreviation.create(:abbreviation => "NC" , :institution_id => Institution.find_by_abbreviation("NCI").id)
MbbInstitutionAbbreviation.create(:abbreviation => "NUI" , :institution_id => Institution.find_by_abbreviation("NUI").id)
MbbInstitutionAbbreviation.create(:abbreviation => "PCC" , :institution_id => Institution.find_by_abbreviation("CARLOWC").id)
MbbInstitutionAbbreviation.create(:abbreviation => "RC" , :institution_id => Institution.find_by_abbreviation("RCSI").id)
MbbInstitutionAbbreviation.create(:abbreviation => "RIA" , :institution_id => Institution.find_by_abbreviation("RIA").id)
MbbInstitutionAbbreviation.create(:abbreviation => "SG" , :institution_id => Institution.find_by_abbreviation("ITS").id)
MbbInstitutionAbbreviation.create(:abbreviation => "SJCC" , :institution_id => Institution.find_by_abbreviation("UNKNOWN").id)
MbbInstitutionAbbreviation.create(:abbreviation => "TA" , :institution_id => Institution.find_by_abbreviation("ITTALLAGHT").id)
MbbInstitutionAbbreviation.create(:abbreviation => "TCD" , :institution_id => Institution.find_by_abbreviation("TCD").id)
MbbInstitutionAbbreviation.create(:abbreviation => "TI" , :institution_id => Institution.find_by_abbreviation("LIT").id)
MbbInstitutionAbbreviation.create(:abbreviation => "TL" , :institution_id => Institution.find_by_abbreviation("ITT").id)
MbbInstitutionAbbreviation.create(:abbreviation => "TR" , :institution_id => Institution.find_by_abbreviation("TCD").id)
MbbInstitutionAbbreviation.create(:abbreviation => "WD" , :institution_id => Institution.find_by_abbreviation("WIT").id)
MbbInstitutionAbbreviation.create(:abbreviation => "WIT" , :institution_id => Institution.find_by_abbreviation("WIT").id)


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
