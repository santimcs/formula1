class Result < ActiveRecord::Base
  attr_accessible :driver_id, :grid, :points, :position, :race_id
	belongs_to :race
	belongs_to :driver
	default_scope :order => 'position ASC'
	
	validates_presence_of :race_id, :position, :driver_id, :grid
	validates_numericality_of :position, :grid
	validates_inclusion_of :position, :in => 1..22
	
	before_save :assign_points
	before_destroy :deduct_points
	
	private
	def assign_points
		if self.position == 1
			self.points = 25
		elsif self.position == 2
			self.points = 18
		elsif self.position == 3
			self.points = 15
		elsif self.position == 4
			self.points = 12
		elsif self.position == 5
			self.points = 10
		elsif self.position == 6
			self.points = 8
		elsif self.position == 7
			self.points = 6
		elsif self.position == 8
			self.points = 4
		elsif self.position == 9
			self.points = 2
		elsif self.position == 10
			self.points = 1
		elsif self.position >= 11
			self.points = 0		
		end
		
		driver = Driver.find(self.driver_id)
		driver.points = driver.points + self.points
		driver.save
		
		team = Team.find(driver.team_id)
		team.points = team.points + self.points
		team.save		
			
	end
	
	def deduct_points
		
		driver = Driver.find(self.driver_id)
		driver.points = driver.points - self.points
		driver.save
		
		team = Team.find(driver.team_id)
		team.points = team.points - self.points
		team.save		
		
	end
	
end
