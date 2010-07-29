# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_blogin15_session',
  :secret      => '8acc4e7fadec0540211e6f559d393eb4b7927c85206b38467b58db93ca678f898db9f42cf739188df98a1f1d6e8bd4bf91b4c056eee6e9fc709d4a2933f7eb77'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
