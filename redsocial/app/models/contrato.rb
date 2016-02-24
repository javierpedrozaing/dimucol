class Contrato < ActiveRecord::Base
	has_many :contratos_plan
	has_many :plans, throught: => 'contratos_plan'
end
