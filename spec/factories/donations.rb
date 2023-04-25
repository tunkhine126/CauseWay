FactoryBot.define do
  factory :donation do
    amount { "9.99" }
    user { nil }
    organization { nil }
  end
end
