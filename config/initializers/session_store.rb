# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_promist_session',
  :secret      => '056f6dfbc5a8595b0547ac510e4d561a675c1f8e7ba91c55c5c33a158c8caf6d655fd808f8fcc748a7de57f98243bf2c2ab1f4ebfb7cbb280920f829bc9f5629'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
