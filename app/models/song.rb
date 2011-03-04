class Song < ActiveRecord::Base
	
	validates_presence_of :name

	validates_presence_of :album

	belongs_to	:album

end
