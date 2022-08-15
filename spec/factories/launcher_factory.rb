FactoryBot.define do
  factory :launcher do
    imported_t { DateTime.now }
    imported_id { 'c185a08e-9d82-4590-a13f-213c84c865e0' }
    status  { 'draft' }
    sequence(:data) { |n| "#{n}test" }
  end
end
