FactoryBot.define do
  factory :comment do
    content { "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s." }

    trait :comment_empty do
      content { '' }
    end
  end
end
