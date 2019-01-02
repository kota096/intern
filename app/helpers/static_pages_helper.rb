module StaticPagesHelper
    
    #番号を曜日に変換する
    def wdays(number)
        while number>6 do
            number-=7
        end
        day = Array["日", "月", "火", "水", "木", "金", "土"]
        $i=1
        p day[number]
    end
    
    def dtime
        return Office.first.d_time
    end
    
    def ntime
        return Office.first.n_time
    end
    
    def save_st_time
    end
    def save_end_time
    end
=begin
曜日表示

    if number==0
        p "日"
    elsif number==1
        p "月"
    elsif number==2
        p "火"
    elsif number==3
        p "水"
    elsif number==4
        p "木"
    elsif number==5
        p "金"
    elsif number==6
        p "土"
    end
=end
end
