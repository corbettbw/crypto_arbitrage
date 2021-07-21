require 'coinbase/exchange'

# Key: OHMMHyuSB6scoVsb
# Secret Key: nY24RcLENP74orPujiqPOgfFEPEDeh35

# Passphrase: 77wn8yv2k6f
# Secret: 5ROYCbDkGhuRSJFnteAGNoxjtN6Pa57R9LyN4JfrhBEhF0K8pc3ryLsYg9qtFjTlCNV5hFMPYW6k5EbZJHcTpA==
# key: 5bfadf75f970f7da402afd8568581a21

api_key = "5bfadf75f970f7da402afd8568581a21"
api_secret = "5ROYCbDkGhuRSJFnteAGNoxjtN6Pa57R9LyN4JfrhBEhF0K8pc3ryLsYg9qtFjTlCNV5hFMPYW6k5EbZJHcTpA=="
api_pass = "77wn8yv2k6f"

sandbox = Coinbase::Exchange::Client.new(api_key, api_secret, api_pass, 
                                          api_url: "https://api-public.sandbox.pro.coinbase.com")

sandbox.last_trade do |resp|
  p "Spot Rate: $ %.2f" % BigDecimal(resp['price'])
end

# while true
#   sleep 10
#   rest_api.last_trade(product_id: "BTC-GBP") do |resp|
#     p "Spot Rate: £ %.2f" % resp.price
#   end
# end