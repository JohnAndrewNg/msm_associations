class Actor < ApplicationRecord

  # movie_id: must be present
  validates :name, :presence => true

  # actor_id: must be present
  validates :actor_id, :presence => true


  has_many :characters, :class_name => "Character", :foreign_key => "actor_id"

#  has_many :movies, :class_name => "Movie", :foreign_key => "id"
  has_many :movies, :through => :characters

end
