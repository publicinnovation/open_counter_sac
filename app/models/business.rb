class Business < ActiveRecord::Base
  attr_accessible :name, :phone_number, :legal_structure, :number_of_employees
  validates :name, :presence => true
  has_one :address, :as => :addressable
  belongs_to :user
end
