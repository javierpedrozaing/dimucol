class Plan < ActiveRecord::Base
	has_many :contratos_plan
	has_many :contratos, throught: => 'contratos_plan'
end
