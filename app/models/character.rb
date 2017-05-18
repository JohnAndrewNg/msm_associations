class Character < ApplicationRecord

# movie_id: must be present
validates :movie_id, :presence => true
# validates :movie_id, :presence => true, :uniqueness => { :scope => :dob }

# actor_id: must be present
validates :actor_id, :presence => true



belongs_to :actor, :class_name => "Actor", :foreign_key => "actor_id"

belongs_to :movie, :class_name => "Movie", :foreign_key => "movie_id"
# belongs_to :movie   / short hand, same as above
end
