class MonitoringJob < ApplicationJob
  queue_as :default
  def perform(component)
    pp component
    component.monitoring
  end

end
