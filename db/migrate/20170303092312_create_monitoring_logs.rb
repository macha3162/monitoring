class CreateMonitoringLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :monitoring_logs do |t|
      t.bigint :component_id
      t.string :status_code
      t.string :status
      t.float :time

      t.timestamps
    end
  end
end
