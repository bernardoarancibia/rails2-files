# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_productos_session',
  :secret      => 'e7d3e5e0997627136f84efda90021f153401990f88248fda61d68784d24c44add99596d266cd06ccd2b6abe2cee9e467497a77f5e7c2944a22a4a83523f2dcf4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
