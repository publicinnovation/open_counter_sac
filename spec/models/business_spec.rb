require 'spec_helper'

describe Business do
  context 'mass assignment' do
    it {should allow_mass_assignment_of :name}
    it {should allow_mass_assignment_of :phone_number}
    it {should allow_mass_assignment_of :legal_structure}
    it {should allow_mass_assignment_of :number_of_employees}
  end

  context 'validations' do
    it {should validate_presence_of :name}
  end

  context 'associations' do
    it {should have_one :address}
    it {should belong_to :user}
  end
end
