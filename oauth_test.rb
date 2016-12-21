require 'oauth2'

client_id     = '51677beaeb14f517da6154a6b8d42e4b92d0afb6aec65fa9e97d2080ab2acda3' # your client's id generated with rake db:setup
client_secret = '8c44bc18e32fd445c1eeee00eda08f456072aca2f4cc87edd491839012bb18f3'
redirect_uri  = 'http://localhost:4000/users/callbacks'
site          = "http://localhost:3000"
client = OAuth2::Client.new(client_id, client_secret, :site => site)

url = client.auth_code.authorize_url(:redirect_uri => redirect_uri)

# Token
code = '1dcdbdf2c9379c99f30423754c0fd57aeb52ce7bb9466c905771605022bb7a3d'
access = client.auth_code.get_token(code, :redirect_uri => redirect_uri)
# Return token
access.token


# 打 API

curl -i -H "Authorization: Bearer dc760860176a10448303e66bae5211f7fdeec2037c6fd21a65e3708e7a0ca309" http://localhost:3000/tasks.jon

header
Authorization: "Bearer dc760860176a10448303e66bae5211f7fdeec2037c6fd21a65e3708e7a0ca309"
