class ServiceStatus < ApplicationRecord

  has_many :services

  STATUS_TYPES = %w(ok minor major maintenance).freeze

  validates :name, presence: true
  validates :permalink, presence: true, uniqueness: true
  validates :status_type, inclusion: {in: STATUS_TYPES}
  validates :color, format: {with: /\A[A-Fa-f0-9]{6}\z/, message: "must be a hex value (e.g. 2FCC66)"}

  default_value_for :permalink do |model|
    model.name.parameterize
  end

  def self.create_defaults
    ServiceStatus.create!(name: 'Operational', status_type: 'ok', color: '2FCC66')
    ServiceStatus.create!(name: 'Degraded Performance', status_type: 'minor', color: 'F1C40F')
    ServiceStatus.create!(name: 'Partial Outage', status_type: 'minor', color: 'E67E22')
    ServiceStatus.create!(name: 'Major Outage', status_type: 'major', color: 'E74C3C')
    ServiceStatus.create!(name: 'Maintenance', status_type: 'maintenance', color: 'AAAAAA')
  end

  def self.default
    self.where(:status_type => 'ok').first
  end

end
