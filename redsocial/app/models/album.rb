class Album < ActiveRecord::Base
	belongs_to :profile, foreign_key: 'profile_id'	
	has_many :photos
end
