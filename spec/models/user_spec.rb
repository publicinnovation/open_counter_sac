require 'spec_helper'

describe User do
  context 'mass assignment' do
    it {should allow_mass_assignment_of :first_name}
    it {should allow_mass_assignment_of :last_name}
    it {should allow_mass_assignment_of :phone_number}
  end

  context 'validations' do
    it {should validate_presence_of :first_name}
    it {should validate_presence_of :last_name}
  end
end
