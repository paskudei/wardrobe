# frozen_string_literal: true

FactoryBot.define do
  factory :cloth do
    name { FFaker::Lorem.word }
    category { Cloth.categories.keys.sample }
    level { FFaker::Random.rand(1..15) }
    game_class { Cloth.game_classes.keys.sample }
    kind { Cloth.kinds.keys.sample }
    image { Rails.root.join('spec', 'fixtures', 'cloths', "#{rand(1..5)}.gif").open }
  end
end
