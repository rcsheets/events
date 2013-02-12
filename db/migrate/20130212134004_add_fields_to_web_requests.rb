class AddFieldsToWebRequests < ActiveRecord::Migration
  def up
    add_column :web_requests, :remote_address, :string
    add_column :web_requests, :request_method, :string
    add_column :web_requests, :request_path, :string
    add_column :web_requests, :user_agent, :string
  end

  def down
    remove_column :web_requests, :remote_address
    remove_column :web_requests, :request_method
    remove_column :web_requests, :request_path 
    remove_column :web_requests, :user_agent
  end
end
