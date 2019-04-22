FactoryBot.define do
    factory :projector do
        manufacture       { Faker::Device.manufacture }
        model             { Faker::Device.model }
        serial            { Faker::Number.serial }
        ahc_number        { Faker::Alphanumeric.ahc_number }
        classroom         { Faker::Alphanumeric.name }
        mount_type        { Faker::App.mount_type }
        lamp_type         { Faker::App.lamp_type }
        throw_distance    { Faker::App.throw_distance }
        date_install      { Faker::Date.date_install }
        date_checked      { Faker::Date.date_checked }
        lamp_change       { Faker::App.lamp_change }
        total_lamp_hours  { Faker::Number.total_lamp_hours }
        repair_date       { Faker::Date.repair_date }
        date              { Faker::Date.date }
        model_year        { Faker::Date.model_year }
    end
end