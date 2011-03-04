require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
	
	test "new album requires name field" do
		a = Album.new
		a.description = "aoeuaoeu"
		a.year = 1999
		assert(!a.valid?)
		assert false
	end
	
	test "existing album defines name field" do
		a = albums(:album_1)
		assert_not_nil(a)
		assert_not_nil(a.name)
	end
	
end
