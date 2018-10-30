FactoryBot.define do
  factory :user, class: User do
    name { 'First User'}
    email { 'user@email.com' }
    admin { true }
  end
end
