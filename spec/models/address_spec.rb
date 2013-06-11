require 'spec_helper'

describe Address do
  context 'mass assignment' do
    it {should allow_mass_assignment_of :street}
    it {should allow_mass_assignment_of :unit}
    it {should allow_mass_assignment_of :city}
    it {should allow_mass_assignment_of :state}
    it {should allow_mass_assignment_of :zip}
  end

  context 'validations' do
    it {should validate_presence_of :street}
    it {should validate_presence_of :city}
    it {should validate_presence_of :state}
    it {should validate_presence_of :zip}
    it {should validate_presence_of :addressable}
  end

  context 'associations' do
    it {should belong_to :addressable}
  end
end
