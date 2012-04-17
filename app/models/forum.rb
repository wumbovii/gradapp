class Forum < ActiveRecord::Base
	
	has_many :discussions
	validates_presence_of :title

end
