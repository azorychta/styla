module ApplicationHelper

	# Returns full tite on a per-page basis

	def full_title(page_title)
		base_title = "Styler App"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
end
end
end
