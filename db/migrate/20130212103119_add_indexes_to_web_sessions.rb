class AddIndexesToWebSessions < ActiveRecord::Migration
  def change
    add_index :web_sessions, :session_id
    add_index :web_sessions, :updated_at
  end
end
