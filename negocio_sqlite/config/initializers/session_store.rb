# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_negocio_sqlite_session',
  :secret      => 'd41be02115cb6150e10058de6844ef407182c8ae83a058d62c232159676907c5f1648d8b50767e3e0ed4d18d75a9d23a5bc7bb8ebd9ae5b91f5abb4765d90f52'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
