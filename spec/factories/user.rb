FactoryGirl.define do 
  factory :user do
    password "password"
    password_confirmation "password"
    confirmed_at Time.now
  end
end
