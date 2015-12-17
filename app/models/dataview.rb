class Dataview < ActiveRecord::Base

  validates_presence_of :cook,  :on => :create
  validates_presence_of :money, numericality: true
  
end
