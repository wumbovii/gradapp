class Discussion < ActiveRecord::Base

	belongs_to :forum
	has_many :posts
	
	validates_presence_of :subject #, :forum_id
	
  
	

end