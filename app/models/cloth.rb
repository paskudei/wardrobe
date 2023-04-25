# frozen_string_literal: true

class Cloth < ApplicationRecord
  enum category: {
    one_handed_weapon: 'one_handed_weapon',
    two_handed_weapon: 'two_handed_weapon',
    armor: 'armor',
    leggings: 'leggings',
    chain_mail: 'chain_mail',
    shoes: 'shoes',
    shoulder_pads: 'shoulder_pads',
    bracers: 'bracers',
    helmet: 'helmet',
    ring: 'ring',
    amulet: 'amulet',
    belt: 'belt',
    bag: 'bag'
  }

  enum game_class: {
    knight: 'knight',
    pathfinder: 'pathfinder',
    berserk: 'berserk',
    wizard: 'wizard',
    magus: 'magus',
    magician: 'magician',
    rogue: 'rogue',
    warrior: 'warrior',
    guardian: 'guardian',
    crushers: 'crusher',
    warlocks: 'warlocks',
    defenders: 'defenders',
    physical_classes: 'physical_classes',
    magician_classes: 'magician_classes',
    universal: 'universal'
  }

  enum kind: {
    pve: 'pve',
    pvp: 'pvp',
    honor_pvp: 'honor_pvp'
  }

  mount_uploader :image, ::ImageUploader

  validates :name, presence: true
  validates :category, presence: true
  validates :level, presence: true
  validates :game_class, presence: true
  validates :kind, presence: true
  validates :image, presence: true
end
