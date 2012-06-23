# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

require 'csv'

parsed = CSV.parse(File.read("#{Rails.root}/db/ghbhrb.csv"))

games = parsed.collect { |i| i[3] }.uniq

games.each { |game| Game.create(:name => game.strip) }

parsed.each do |row|
  Song.create(:artist => row[0], :title => row[1], :tier => row[2], :game => Game.where(:name => row[3]).first)
end
