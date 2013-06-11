require 'spec_helper'

describe User do
  context 'mass assignment' do
    it {should allow_mass_assignment_of :title}
    it {should allow_mass_assignment_of :first_name}
    it {should allow_mass_assignment_of :last_name}
    it {should allow_mass_assignment_of :phone_number}
  end

  context 'validations' do
    it {should validate_presence_of :first_name}
    it {should validate_presence_of :last_name}
  end

  context 'associations' do
    it {should have_one :address}
  end

  context 'name' do
    let(:user) {FactoryGirl.create(:user)}

    it "should return 'first_name last_name'" do
      user.name.should eq "#{user.first_name} #{user.last_name}"
    end
  end
end
