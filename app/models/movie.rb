class Movie < ActiveRecord::Base
    def self.ratings
        Movie.select(:rating).distinct.inject([]) {|a, m| a.push m.rating }
    end
    #def self.all_ratings
    #  ['G','PG','PG-13','R']
    #end
end
