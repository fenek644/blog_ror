
FactoryBot.define do
  factory :comment do
    author { "mike" }
    # text { "Lorem Epsum" }
    sequence(:body) { |n| "comment body #{n}"}
  end
end