class Park < ActiveRecord::Base 
    has_many :visits
    has_many :dogs, through: :visits 

    def Park.all_names
        Park.all.map { |park| park.name }
    end
end