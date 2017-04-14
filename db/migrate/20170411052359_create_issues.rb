class CreateIssues < ActiveRecord::Migration[5.1]
  def change
    create_table :issues do |t|
      t.integer :user_id
      t.string :title
      t.string :state
      t.integer :service_status_id
      t.string :identifier

      t.timestamps
    end
  end
end
