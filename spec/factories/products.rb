FactoryBot.define do
  factory :products, class: Product do 
    name { Faker::Name.unique.name}
    description {Faker::Lorem.paragraph}
    price {Faker::Number.decimal_part(digits: 2)}
    make {Faker::Number.number(digits: 4)}
  end
end