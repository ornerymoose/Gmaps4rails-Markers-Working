class Map < ActiveRecord::Base
  attr_accessible :gmaps, :latitude, :longitude, :name
  acts_as_gmappable
  def gmaps4rails_address
    name
  end
  
  def gmaps4rails_infowindow
     "<h4>
        Name/Address: <a href='/maps/#{id}'>#{name}</a> 
      </h4>"
    
  end
end
