class Dog < ActiveRecord::Base
    has_many :visits
    has_many :parks, through: :visits 
    
    def name_of_parks
        self.visits.map{ |visit| visit.park.name }.uniq 
    end
end