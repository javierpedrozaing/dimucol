class Publicity < ActiveRecord::Base
	has_many :photos, :as => :image
	has_many :videos
	has_many :sections_publicity
	has_many :sections, :through => :sections_publicity
	
	has_many :publicites_contrato
	has_many :users, :through => :publicites_contrato

end
