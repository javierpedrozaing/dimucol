class Section < ActiveRecord::Base
	has_many :seccion_profile
	has_many :profiles, :through => :seccion_profile
end
