class Industry < ApplicationRecord
  include Slugable

  extend FriendlyId
  friendly_id :identifier, use: :slugged

  has_many :vendors, dependent: :restrict_with_error
end
