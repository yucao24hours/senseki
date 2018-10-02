class Match < ApplicationRecord
  has_many :match_members
  has_many :members, through: :match_members

  accepts_nested_attributes_for :match_members
end
