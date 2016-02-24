class ContratosPlan < ActiveRecord::Base
	belongs_to :plan
	belongs_to :contrato

end
