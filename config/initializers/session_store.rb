# Be sure to restart your server when you modify this file.

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
Events::Application.config.session_store :active_record_store

ActiveRecord::SessionStore.session_class = WebSession
ActiveRecord::SessionStore::Session.table_name = 'web_sessions'
