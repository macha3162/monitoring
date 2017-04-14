class CreateIssueUpdates < ActiveRecord::Migration[5.1]
  def change
    create_table :issue_updates do |t|
      t.string :state
      t.references :issue, foreign_key: true
      t.references :user, foreign_key: true
      t.string :identifier
      t.text :description

      t.timestamps
    end
  end
end
