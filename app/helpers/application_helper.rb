module ApplicationHelper

	def title
		base_title = 'ZenModels'
		if @title.nil?
			base_title
		else
			"#{@title} | "#{base_title}"    
		end
	end

end
