# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Coin.create!(
    description: "Bitcoins",
    acronym: "BTC",
    url_image: "https://pngimg.com/uploads/bitcoin/small/bitcoin_PNG47.png"
)


Coin.create!(
    description: "Ethereum",
    acronym: "ETC",
    url_image: "https://cryptologos.cc/logos/ethereum-eth-logo.png"
)


Coin.create!(
    description: "Dash",
    acronym: "DASH",
    url_image: "https://s2.coinmarketcap.com/static/img/coins/200x200/131.png"
)

puts "Moedas cadastradas com sucesso"