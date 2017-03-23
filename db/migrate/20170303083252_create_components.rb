class CreateComponents < ActiveRecord::Migration[5.1]
  def change
    create_table :components do |t|
      t.bigint :organization_id
      t.string :status
      t.string :url
      t.integer :error_count
      t.timestamp :executed_at
      t.timestamps
    end
  end
end
