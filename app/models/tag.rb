class Tag < ActiveRecord::Base
  has_many :taggeds
  has_many :things, through: :taggeds
end
