# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rbenv_session',
  :secret      => 'c7cf70949d0a95899b40a503ca7bee4b9d313dcb7dd4aafa0fb1492ba28dc9f14de58a7f30e6ad7ea0ca0475825c9a99a45f010e5d5e1d2d2fecd5431b5e6b11'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
