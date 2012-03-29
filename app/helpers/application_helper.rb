module ApplicationHelper
	def title
		base_title = "Ruby on Rails CS161 GradApp"
		if @title.nil?
			base_title
		else
			"#{base_title} | #{@title}"
		end
	end
  def logo
    image_tag("logo.pgn", :alt => "Grad App", :class => "round")
  end
end
