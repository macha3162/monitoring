class Service < ApplicationRecord

  attribute :permalink, :string, default: -> { self.name.parameterize }
end
