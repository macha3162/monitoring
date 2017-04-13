class CreateServiceStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :service_statuses do |t|
      t.integer :user_id
      t.string :name
      t.string :permalink
      t.string :color
      t.string :status_type

      t.timestamps
    end
  end
end
