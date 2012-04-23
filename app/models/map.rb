class Map < ActiveRecord::Base
  attr_accessible :gmaps, :latitude, :longitude, :name
  acts_as_gmappable
  def gmaps4rails_address
    name
  end
  
  def gmaps4rails_infowindow
     "<img src=/ctlogo.jpg height=50 width=70><h5>
        Name/Address: <br><a href='/maps/#{id}'>#{name}</a> 
      </h5>"
     
  end
end
