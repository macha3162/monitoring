class Issue < ApplicationRecord
  attribute :identifier, :string, default: -> {SecureRandom.uuid}
end
