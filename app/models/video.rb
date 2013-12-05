class Video < ActiveRecord::Base
  belongs_to :user
  has_many :ratings
  validates :user_id, :title, :youtube_id, presence: true

  def avg_rating
  	total = 0.0
  	rating_ary = self.ratings.to_a
	  if rating_ary.length > 0
	  	Rating.average(:value)
	  else 
	  		return 0
  	end
  end
end