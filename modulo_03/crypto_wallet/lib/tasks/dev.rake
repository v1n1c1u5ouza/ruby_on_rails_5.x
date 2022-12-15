namespace :dev do
  desc "Configirando o ambiente de desenvolvimento"
  task setup: :environment do
    show_spinner("Apagando db...") {%x(rails db:drop)}
    show_spinner("Criando db...") {%x(rails db:create)}
    show_spinner("Migrando db...") {%x(rails db:migrate)} 
    show_spinner("Populando db...") {%x(rails db:seed)}
  end
end

def show_spinner(initial_mag, final_msg = "Concluido")
  spinner = TTY::Spinner.new("[:spinner] #{initial_mag}")
  spinner.auto_spin
  yield
  spinner.success(final_msg)
end
