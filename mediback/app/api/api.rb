class API < Grape::API
  version 'v1'
  prefix :api
  format :json

  mount Hermes::Ping
  mount Hermes::Chatapi
end
