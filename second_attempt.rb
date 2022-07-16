require './helpful_methods.rb'

client = setupClient

currencies = client.currencies # returns an array of hashes

spot = client.spot_price({currency: "USD"})["amount"].to_f
buy = client.buy_price({currency_pair: "BTC-USD"})["amount"].to_f
sell = client.sell_price({currency_pair: "BTC-USD"})["amount"].to_f

5.times do |n|
    puts "Spot:                 $#{spot}"
    puts "Buy:                  $#{buy}"
    puts "Sell:                 $#{sell}"

    puts ""
end
