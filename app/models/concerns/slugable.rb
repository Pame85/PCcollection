module Slugable
  extend ActiveSupport::Concern

  included do
    before_validation :set_identifier, prepend: true, if: Proc.new{ |object| object.identifier.nil? }

    private
      def set_identifier
        self.identifier = SecureRandom.hex(7)
      end
  end
end
