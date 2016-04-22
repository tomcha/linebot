require 'linebot/version'
require 'sinatra/base'
require 'json'
require 'yaml'

module Linebot
  class Application < Sinatra::Base
    post '/' do
    end

    post '/linebot/callback' do
      params = JSON.parse(request.body.read)

      params['result'].each do |msg|
        p msg
        request_contet = {
          to: [msg['content']['from']],
          toChannel: 1383378250,
          eventType: 140177271400161403,
            content: msg['content'],
        }
      end
    end
  end
end
