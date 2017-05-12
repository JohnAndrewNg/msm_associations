class Character < ApplicationRecord

# movie_id: must be present
validates :movie_id, :presence => true, :uniqueness => { :scope => :dob }

belongs_to :actor, :class_name => "Actor", :foreign_key => "id"

belongs_to :movie, :class_name => "Movie", :foreign_key => "id"

end
