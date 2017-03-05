class KickJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    Component.all.each do |component|
      MonitoringJob.perform_later(component)
    end
  end
end
