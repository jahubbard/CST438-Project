FactoryBot.define do
    factory :computer do
        manufacture       { Faker::Device.manufacture }
        model             { Faker::Device.model }
        serial            { Faker::Number.serial }
        name              { Faker::Device.name }
        classroom         { Faker::Alphanumeric.name }
        check_date        { Faker::Date.check_date }
        model_year        { Faker::Date.model_year }
    end
end