class Video < ActiveRecord::Base
  belongs_to :user
  has_many :ratings
  validates :user_id, :title, :youtube_id, presence: true
end