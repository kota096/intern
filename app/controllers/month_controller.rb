class MonthController < ApplicationController
    def next_month
        @user = current_user
        $data = $data+1
        @month = $mon+$data
    end
    def previous_month
        @user = current_user
        $data = $data-1
        @month = $mon+$data
    end
    def to_month
        @user = current_user
        $data = 0
        $mon = Date.today.month
        @month=$mon
    end
end
