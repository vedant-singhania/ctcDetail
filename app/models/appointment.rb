class Appointment < ActiveRecord::Base
  
  belongs_to :customer
  belongs_to :package
  belongs_to :crew
  
  #named scope :appointments_today, lambda {|date|
    #{ :conditions => {:appointments_today => date}}
   # }
  
end
