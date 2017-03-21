class Component < ApplicationRecord
  has_many :monitoring_logs, dependent: :delete_all

  scope :elapsed_time, -> (sec) {where('executed_at <= ?', Time.current.ago(sec))}
  def monitoring
    log = monitoring_logs.build
    log.time = Benchmark.realtime do
      res = Faraday.head url
      log.status_code = res.status
    end
    log.save
    touch(:executed_at)
  end
end
