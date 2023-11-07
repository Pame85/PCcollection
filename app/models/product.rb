class Product < ApplicationRecord
  include Slugable

  extend FriendlyId
  friendly_id :identifier, use: :slugged

  belongs_to :category, counter_cache: true
  belongs_to :vendor, counter_cache: true

  has_and_belongs_to_many :collections
  has_many :order_items, as: :orderable

  scope :available, -> { where(available: :true) }
end
