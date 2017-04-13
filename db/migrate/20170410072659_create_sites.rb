class CreateSites < ActiveRecord::Migration[5.1]
  def change
    create_table :sites do |t|
      t.integer :user_id
      t.string :title
      t.text :description
      t.string :domain
      t.string :http_protocol
      t.string :support_email
      t.string :website_url
      t.string :time_zone

      t.timestamps
    end
  end
end
