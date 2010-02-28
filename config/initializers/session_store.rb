# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_activity_rss_session',
  :secret      => 'a110c0a854a62c36ac370c467cf46ae3fd1756680ba449fe299886b4fd531e090db84b3a5201585ebd1d2111e98d6e255d7cf80610ae21271c8b617a3a92aa12'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
