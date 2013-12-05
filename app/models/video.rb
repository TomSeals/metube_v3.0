class Video < ActiveRecord::Base
  belongs_to :user
  has_many :ratings
  validates :user_id, :title, :youtube_id, presence: true

  def avg_rating
  	self.ratings.to_a.length > 0 ? Rating.average(:value) : 0
  end
end