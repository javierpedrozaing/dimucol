class Profile < ActiveRecord::Base
	has_many :albums
	belongs_to :user
	has_many :photos, :as => :image
	belongs_to :municipio
	has_many :notifications

end
