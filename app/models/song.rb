class Song < ActiveRecord::Base
  attr_accessible :artist, :description, :genre, :title
end
