class Micropost < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  mount_uploader :picture, PictureUploader
  validates :user_id, presence: true
  validates :bname, presence: true, length: { maximum: 100 }
  validates :bauthor, presence: true, length: { maximum: 150 }
  validate :picture_size
  private
  def picture_size
  	if picture.size > 5.megabytes
  		errors.add(:picture,"should be less than 5B")
  	end
  end
  
end
