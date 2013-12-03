class Video < ActiveRecord::Base

	def snippet
		self.description.truncate(100)
	end

	def rating
		video_rating = rand(1..5)
	end

	def next
		# Video.where(["id >  ", id]).first

		if self.id < Video.last.id
			self.id + 1
		else 
			self.id = Video.first.id
		end
	end

	def previous
		if self.id > Video.first.id
			self.id - 1
		else 
			self.id = Video.last.id
		end
	end

		# counter = 0
		# videos = Video.all
		# if counter < videos.length
end