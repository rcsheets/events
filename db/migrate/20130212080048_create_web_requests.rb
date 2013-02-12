class CreateWebRequests < ActiveRecord::Migration
  def change
    create_table :web_requests do |t|
      t.string :guid

      t.timestamps
    end
  end
end
