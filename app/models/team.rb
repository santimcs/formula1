class Team < ActiveRecord::Base
  attr_accessible :base, :chassis, :country, :engine, :full_name, :image, :name, :team_principal, :technical_chief, :points
  has_many :drivers
  default_scope :order => 'id ASC'
  mount_uploader :image, ImageUploader

	validates_numericality_of :points
	
end
