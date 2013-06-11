class Address < ActiveRecord::Base
  attr_accessible :street, :unit, :city, :state, :zip
  validates :street, :presence => true
  validates :city, :presence => true
  validates :state, :presence => true
  validates :zip, :presence => true
  validates :addressable, :presence => true
  belongs_to :addressable, :polymorphic => true
end
