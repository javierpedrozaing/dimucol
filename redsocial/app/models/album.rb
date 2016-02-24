class Album < ActiveRecord::Base
	belongs_to :profile, foreign_key: 'profile_id'	
	has_and_belongs_to_many :photos
end
