class CreateComponents < ActiveRecord::Migration[5.1]
  def change
    create_table :components do |t|
      t.bigint :organization_id
      t.string :status
      t.string :url

      t.timestamps
    end
  end
end
