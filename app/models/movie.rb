class Movie < ActiveRecord::Base
  def self.get_possible_values
    return ['G', 'PG', 'PG-13', 'R']
  end
  
  def self.with_ratings(ratings)
    return Movie.where("ratings.include? rating")
  end
end
