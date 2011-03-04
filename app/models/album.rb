# An +Album+ represents
# Preston Lee
# Some _text_ with *special* formatting.
# * One
# * Two
# * The third list item.
# 1. a
# 1. b
# 1. c
class Album < ActiveRecord::Base
	
	validates_presence_of :name
	validates_presence_of :description
	validates_presence_of :year
	
	validates_uniqueness_of :name
	
	has_many :songs,	:dependent => :destroy
	
	# This is my method
	def foobar
		return nil
	end
	
end
