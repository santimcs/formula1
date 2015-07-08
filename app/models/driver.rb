class Driver < ActiveRecord::Base
  attr_accessible :abbreviation, :birthdate, :first_name, :image, :last_name, :nationality, :number, :points, :team_id, :full_name
    belongs_to :team
  default_scope :order => 'first_name ASC, last_name ASC'
  mount_uploader :image, ImageUploader
  
  # Getter
  def full_name
  	[first_name, last_name].join(' ')
  end
  
  # Setter
  def full_name=(name)
  	split = name.split(' ', 2)
  	self.first_name = split.first
  	self.last_name = split.last
 end
  	
end
