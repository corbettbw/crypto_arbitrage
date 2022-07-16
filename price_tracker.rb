require './helpful_methods.rb'

client = setupClient

300.times do |n|
    old_spot = client.spot_price({currency: "USD"})["amount"].to_f
    puts old_spot unless n > 1
    sleep 3
    new_spot = client.spot_price({currency: "USD"})["amount"].to_f
    change = (new_spot - old_spot).to_f
    sleep 3

    if change != 0
        puts "$#{old_spot}"
        puts "$#{new_spot}"
        puts change < 0 ? change : "+#{change}"
    end
end