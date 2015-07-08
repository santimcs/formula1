class Race < ActiveRecord::Base
  attr_accessible :circuit, :city, :country, :distance, :from_date, :image, :laps, :length, :name, :to_date
  
  default_scope :order => 'name ASC'
  mount_uploader :image, ImageUploader

	validates_presence_of :country, :city, :name, :circuit, :length, :distance
	validates_numericality_of :length, :distance
end
