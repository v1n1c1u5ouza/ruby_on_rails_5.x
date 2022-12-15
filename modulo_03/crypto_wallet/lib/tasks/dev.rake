namespace :dev do
  desc "Configirando o ambiente de desenvolvimento"
  task setup: :environment do
  if Rails.env.development?
    show_spinner("Apagando db...") {%x(rails db:drop)}
    show_spinner("Criando db...") {%x(rails db:create)}
    show_spinner("Migrando db...") {%x(rails db:migrate)} 
    %x(rails dev:add_coins)
    %x(rails dev:add_mining_types)
  else
    puts "Vocẽ não está em ambiente de desenvolvimento"
  end
  end

  desc "Cadastra moedas"
  task add_coins: :environment do
    show_spinner(" Cadastrando moedas...") do
      coins = [
                  {
                      description: "Bitcoins",
                      acronym: "BTC",
                      url_image: "https://pngimg.com/uploads/bitcoin/small/bitcoin_PNG47.png"
                  },
                  {
                      description: "Ethereum",
                      acronym: "ETC",
                      url_image: "https://cryptologos.cc/logos/ethereum-eth-logo.png"
                  },
                  {    
                      description: "Dash",
                      acronym: "DASH",
                      url_image: "https://s2.coinmarketcap.com/static/img/coins/200x200/131.png"
                  },
                  { 
                    description: "Iota",
                    acronym: "IOT",
                    url_image: "https://s2.coinmarketcap.com/static/img/coins/200x200/1720.png",
                  },
                  { 
                    description: "ZCash",
                    acronym: "ZEC",
                    url_image: "https://www.cryptocompare.com/media/351360/zec.png",
                  }
                ]
      coins.each do |coin|
          Coin.find_or_create_by(coin)
      end
    end  
  end

  desc "Cadastra os tipos de mineração"
  task add_mining_types: :environment do
    show_spinner("Cadastrando tipos de mineração...")do
      mining_types = [
        {description: "Proof of Work", acronym: "PoW"},
        {description: "Proof of Stake", acronym: "PoS"},
        {description: "Proof of Capacity", acronym: "PoC"}
      ]

     mining_types.each do |mining_type|
      MiningType.find_or_create_by!(mining_type)
     end 
   end
  end

end

private

def show_spinner(initial_mag, final_msg = "Concluido")
  spinner = TTY::Spinner.new("[:spinner] #{initial_mag}")
  spinner.auto_spin
  yield
  spinner.success(final_msg)
end
