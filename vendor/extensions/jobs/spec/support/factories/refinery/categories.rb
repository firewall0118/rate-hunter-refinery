
FactoryGirl.define do
  factory :category, :class => Refinery::Jobs::Category do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

