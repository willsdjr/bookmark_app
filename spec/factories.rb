FactoryGirl.define do
  factory :user do
    name     "Michael Hartl"
    email    "michael@example.com"
    password "foobar1"
    password_confirmation "foobar1"
  end
end
