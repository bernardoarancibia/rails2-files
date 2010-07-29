# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_probando_update_to_session',
  :secret      => '466ab9d58c51adb77c1a9cdba54514b8513191e0238b050e40fc6b57452248d9e86529290e4a822578c499cf2bceef8589c9bc1fbddf5d462cbc64e9651ec205'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
