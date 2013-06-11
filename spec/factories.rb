FactoryGirl.define do
  factory :user do
    title "Director"
    first_name "Jim"
    last_name "Rinehart"
    phone_number "916.808.5054"
    sequence(:email) {|n| "jrinehart#{n}@cityofsacramento.org"}
    password "password"
  end

  factory :address do
    street "915 I St"
    unit "3rd Floor"
    city "Sacramento"
    state "CA"
    zip "95814"
    association :addressable, :factory => :user
  end
end
