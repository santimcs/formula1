module ApplicationHelper
	def BirthdateToAge(bDate)
		age = Date.today.year - bDate.year
		if Date.today.month < bDate.month ||
			(Date.today.month == bDate.month && bDate.day >= Date.today.day)
			age = age - 1
		end
		age.to_s
	end	
end
