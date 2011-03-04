# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

puts "Destroyinging all data!"
# Song.destroy_all
Album.destroy_all


(1..100).each do |n|
	a = Album.new
	a.name = "Album #{n}"
	a.description = "The ## #{n} demo album seeded in the system."
	a.year = 2010
	a.save!
	
	(1..(n % 5)).each do |m|
		Song.create(:album => a, :name => "Song #{m}")
	end
end
