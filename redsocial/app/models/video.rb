class Video < ActiveRecord::Base
	belongs_to :profile, foreign_key: 'profile_id'
end
