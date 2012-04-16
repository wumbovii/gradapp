class Attachment < ActiveRecord::Base
	
	belongs_to :user
	
	validates_presence_of :subject, :user_id, :content

end
