class Song < ActiveRecord::Base
  attr_accessible :artist, :description, :genre, :title, :mp3
  has_attached_file :mp3
  belongs_to :user

  validates :artist, :title,  presence: true
  validates :user_id, presence: true
  validates_attachment :mp3, presence: true,
  										 content_type: { content_type: ['application/mp3', 'application/x-mp3', 'audio/mpeg', 'audio/mp3'] },
  										 size: { less_than: 9.megabytes }

  # validates_attachment_presence :mp3
  # validates_attachment_size :mp3, :less_than => 9.megabytes
  

end
