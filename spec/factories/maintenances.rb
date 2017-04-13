FactoryGirl.define do
  factory :maintenance do
    title "MyString"
    description "MyText"
    start_at "2017-04-07 17:25:17"
    finish_at "2017-04-07 17:25:17"
    identifier "MyString"
    length_in_minutes 1
    user_id 1
    service_status_id 1
  end
end
