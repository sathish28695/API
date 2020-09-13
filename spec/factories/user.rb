FactoryBot.define do
  factory :user do
    login {Faker::Name.unique.name}
    password {"Password123"}
    after :create do |user|
      create :cart, user: user
    end
  end
end