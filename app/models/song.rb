class Song < ActiveRecord::Base
  attr_accessible :artist, :description, :genre, :title

  validates :artist, :description, :genre, :title,  presence: true

  belongs_to :user
  validates :user_id, presence: true
end
