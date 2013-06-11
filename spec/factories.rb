FactoryGirl.define do
  factory :user do
    title "Director"
    first_name "Jim"
    last_name "Rinehart"
    phone_number "916.808.5054"
    sequence(:email) {|n| "jrinehart#{n}@cityofsacramento.org"}
    password "password"
  end

  factory :business do
    name "The Biz"
    phone_number "234.567.8910"
    legal_structure "Limited Liability Partnership"
    number_of_employees 2
    user
  end

  factory :address do
    street "915 I St"
    unit "3rd Floor"
    city "Sacramento"
    state "CA"
    zip "95814"
    association :addressable, :factory => :user

    factory :business_address do
      association :addressable, :factory => :business
    end
  end
end
