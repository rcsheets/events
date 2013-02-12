class CreateWebSessions < ActiveRecord::Migration
  def change
    create_table :web_sessions do |t|
      t.string :session_id
      t.binary :data
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
