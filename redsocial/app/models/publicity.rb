class Publicity < ActiveRecord::Base
	has_many :photos, :as => :image
	has_many :videos
	has_many :sections
	belongs_to :plans

end
