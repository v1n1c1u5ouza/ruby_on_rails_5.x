module ApplicationHelper
    def date_to_br(date_us)
        date_us.strftime("%d/%m/%y")
    end

    def rails_ambient
       if Rails.env.development?
        "Desenvolvimento"
       elsif Rails.env.production?
        "Produção"
       else 
        "Teste"   
       end
    end
end
