class CreateMaintenances < ActiveRecord::Migration[5.1]
  def change
    create_table :maintenances do |t|
      t.integer :user_id
      t.string :title
      t.text :description
      t.datetime :start_at
      t.datetime :finish_at
      t.string :identifier
      t.integer :length_in_minutes
      t.integer :service_status_id

      t.timestamps
    end
  end
end
