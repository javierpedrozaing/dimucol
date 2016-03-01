class Departamento < ActiveRecord::Base
	has_many :municipios
	belongs_to :pais
end
