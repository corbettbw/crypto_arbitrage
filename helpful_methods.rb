require 'coinbase/wallet'

api_pass = 

def setupClient
    api_key = ENV['COINBASE_API_KEY']
    api_secret = ENV['COINBASE_API_SECRET']

    Coinbase::Wallet::Client.new(api_key: api_key, api_secret: api_secret)
end

