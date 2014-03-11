class Crew < ActiveRecord::Base
  
  has_many :appointments
  has_many :packages, :through => :appointments
  
end
