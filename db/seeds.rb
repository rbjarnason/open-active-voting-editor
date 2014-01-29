# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

["Árbær","Breiðholt","Grafarholt","Grafarvogur","Háaleiti og Bústaðir","Hlíðar",
 "Kjalarnes","Laugardalur","Miðborg","Vesturbær"].each do |neighborhood_name|
  I18n.locale = "is"
  ba = BudgetBallotArea.new
  ba.budget_amount = 99.0
  ba.name = neighborhood_name
  ba.save
  I18n.locale = "en"
  ba.name = neighborhood_name
  ba.save
end
