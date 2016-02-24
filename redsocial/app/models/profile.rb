class Profile < ActiveRecord::Base
	has_many :albums
	belongs_to :user, index: true
	has_many :photos
	has_many :videos
	has_many :seccion_profile
	has_many :sections, through: => 'seccion_profile'

end
