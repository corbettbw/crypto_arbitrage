require 'coinbase/wallet'

api_pass = 

def setupClient
    api_key =
    api_secret = 

    Coinbase::Wallet::Client.new(api_key: api_key, api_secret: api_secret)
end

