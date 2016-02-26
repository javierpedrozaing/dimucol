class Photo < ActiveRecord::Base
	belongs_to :image, :polymorphic => true
	has_and_belongs_to_many :albums
end
