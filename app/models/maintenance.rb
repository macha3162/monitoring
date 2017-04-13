class Maintenance < ApplicationRecord
  attribute :identifier, :string, default: -> {SecureRandom.uuid}
end
