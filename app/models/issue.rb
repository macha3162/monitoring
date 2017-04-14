class Issue < ApplicationRecord

  has_many :issue_updates

  STATES = %w(investigating identified monitoring resolved).freeze

  attribute :identifier, :string, default: -> {SecureRandom.uuid}

  validates :title, presence: true
  validates :state, inclusion: {in: STATES}
end
