module ApplicationHelper
    def date_to_br(date_us)
        date_us.strftime("%d/%m/%y")
    end
end
