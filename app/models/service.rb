class Service < ApplicationRecord

  belongs_to :service_status, default: -> { ServiceStatus.default }
  default_value_for :permalink do |model|
    model.name.try(:parameterize)
  end
end
