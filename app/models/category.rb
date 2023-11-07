class Category < ApplicationRecord
  include Slugable

  extend FriendlyId
  friendly_id :identifier, use: :slugged

  has_many :products, dependent: :restrict_with_error
end
