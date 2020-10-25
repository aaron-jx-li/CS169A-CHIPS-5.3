class Movie < ActiveRecord::Base
  def self.get_possible_values
    return ['G', 'PG', 'PG-13', 'R']
  end
  
  def self.with_ratings(ratings)
    return Movie.where(rating: ratings)
  end
  
  def self.order_by_title(ratings)
    return self.with_ratings(ratings).order(:title)
  end
  
  def self.order_by_date(ratings)
    return self.with_ratings(ratings).order(:release_date)
  end
end
