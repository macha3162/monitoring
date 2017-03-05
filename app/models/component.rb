class Component < ApplicationRecord
  has_many :monitoring_logs, dependent: :delete_all

  def monitoring
    log = monitoring_logs.build
    log.time = Benchmark.realtime do
      res = Faraday.head url
      log.status_code = res.status
    end
    log.save
  end
end
