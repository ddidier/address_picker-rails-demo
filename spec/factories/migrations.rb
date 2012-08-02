# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :migration do
    departure_at "2012-07-25 10:02:44"
    arrival_at "2012-07-25 10:02:44"
    from_pond "MyString"
    from_pond_latitude "MyString"
    from_pond_longitude "MyString"
    to_pond "MyString"
    to_pond_latitude "MyString"
    to_pond_longitude "MyString"
  end
end
