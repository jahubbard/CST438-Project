FactoryBot.define do
    factory :camera do
        manufacture       { Faker::Device.manufacture }
        model             { Faker::Device.model }
        serial            { Faker::Number.serial }
        ahc_number        { Faker::Alphanumeric.ahc_number }
        classroom         { Faker::Alphanumeric.name }
        model_year        { Faker::Date.model_year }
    end
end