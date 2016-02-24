class Photo < ActiveRecord::Base
	belongs_to :profile, foreign_ley: "profile_id"
	has_and_belongs_to_many :albums
end
