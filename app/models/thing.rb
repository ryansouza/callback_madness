class Thing < ActiveRecord::Base
  has_many :stuffs
  has_many :taggeds, autosave: true
  has_many :tags, through: :taggeds, autosave: true
end
