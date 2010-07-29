# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mensajes_session',
  :secret      => '2f62f9e7e749f42c0eb863400227aed5f29f81e4c37a4b25cc7611a284966429d3f5ca29c314e7682ae601aa15aafc031dfa60533e816f2fc090ef4957bbdb1a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
