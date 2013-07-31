class Song < ActiveRecord::Base
  attr_accessible :artist, :description, :genre, :title

  validates :artist, :description, :genre, :title,  presence: true
end
