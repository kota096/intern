module StaticPagesHelper
    def first_day
        return Date.today.month.to_s + "/" + Date.today.day.to_s
    end
    def last_day
        return Date.today.end_of_month.month.to_s + "/" + Date.today.end_of_month.day.to_s
    end
end
