require 'oauth2'

client_id     = '51677beaeb14f517da6154a6b8d42e4b92d0afb6aec65fa9e97d2080ab2acda3' # your client's id generated with rake db:setup
client_secret = '8c44bc18e32fd445c1eeee00eda08f456072aca2f4cc87edd491839012bb18f3'
redirect_uri  = 'http://localhost:4000/users/callback'
site          = "http://localhost:3000"
client = OAuth2::Client.new(client_id, client_secret, :site => site)

url = client.auth_code.authorize_url(:redirect_uri => redirect_uri)

# Token
code = 'bec8252855f60072e2dbe7736e52927f5799c243e1837e829fe0a67ac905556e'
access = client.auth_code.get_token(code, :redirect_uri => redirect_uri)
# Return token
access.token
