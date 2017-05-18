class Director < ApplicationRecord

# name: must be present; must be unique in combination with dob
validates :name, :presence => true, :uniqueness => { :scope => :dob}

has_many :movies
# has_many :movies, :class_name => "Movie", :foreign_key => "director_id"  / same as above

end
