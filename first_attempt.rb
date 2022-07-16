require 'coinbase/wallet'

# Key: OHMMHyuSB6scoVsb
# Secret Key: nY24RcLENP74orPujiqPOgfFEPEDeh35

# Passphrase: 77wn8yv2k6f
# Secret: 5ROYCbDkGhuRSJFnteAGNoxjtN6Pa57R9LyN4JfrhBEhF0K8pc3ryLsYg9qtFjTlCNV5hFMPYW6k5EbZJHcTpA==
# key: 5bfadf75f970f7da402afd8568581a21

api_key = "5bfadf75f970f7da402afd8568581a21"
api_secret = "5ROYCbDkGhuRSJFnteAGNoxjtN6Pa57R9LyN4JfrhBEhF0K8pc3ryLsYg9qtFjTlCNV5hFMPYW6k5EbZJHcTpA=="
api_pass = "77wn8yv2k6f"




currency_code = 'USD'

client = Coinbase::Wallet::Client.new(api_key: api_key, api_secret: api_secret)
currencies = client.currencies # returns an array of hashes

currencies.each do |currency| # returns a hash: {"id"=>"USD", "name"=>"US Dollar", "min_size"=>"0.01000000"}
end

price = client.spot_price({currency: currency["id"]})
puts "Current bitcoin price in #{currency["name"]}: #{price.amount}"