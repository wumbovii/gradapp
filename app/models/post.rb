class Post < ActiveRecord::Base
	
	belongs_to :discussion
	belongs_to :school
	belongs_to :user
	
	#validates :school_id, :presence => true, :if => :user_id == nil
	#validates :user_id, :presence => true, :if => :school_id == nil
	validates_presence_of :discussion_id, :comment

end
