class Album < ActiveRecord::Base
	
	validates_presence_of :name
	validates_presence_of :description
	validates_presence_of :year
	
	validates_uniqueness_of :name
	
	has_many :songs,	:dependent => :destroy
	
end
