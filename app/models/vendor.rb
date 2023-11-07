class Vendor < ApplicationRecord
  include Slugable

  extend FriendlyId
  friendly_id :identifier, use: :slugged

  belongs_to :industry
  has_many :products, dependent: :restrict_with_error
end
