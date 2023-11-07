class Collection < ApplicationRecord
  include Slugable

  extend FriendlyId
  friendly_id :identifier, use: :slugged

  has_and_belongs_to_many :products
  has_many :order_items, as: :orderable

  scope :available, -> { where(available: :true) }
end
