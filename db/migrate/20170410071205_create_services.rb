class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.integer :user_id
      t.integer :service_status_id
      t.string :name
      t.string :permalink
      t.integer :podition
      t.text :description

      t.timestamps
    end
  end
end
