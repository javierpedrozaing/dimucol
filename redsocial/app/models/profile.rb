class Profile < ActiveRecord::Base
	has_many :albums
	belongs_to :user
	has_many :photos, :as => :image
	has_many :videos
	has_many :seccions_profiles	
	has_many :sections, :through => :seccions_profiles
	has_many :plans


end
