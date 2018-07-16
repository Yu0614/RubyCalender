class CalenderController < ApplicationController
  require 'date'
  

  
  def index
    
    @first = Date.today
    @last = Date.today -1
    
    @currentDate = @first.strftime( "%Y年 %m月 %d日")
    @days =  "日　月　火　水　木　金　土" 
    @calendar = ""

    if @first.wday != 0 then
      for x in 1..@first.wday do
        @calendar += "   "
      end
    end

    for d in 1..@last.day do
      if @first.wday == 6 then
        @calendar += sprintf("%2s"+"  ",d) + "\n"
      else
        @calendar += sprintf("%2s      ",d)
      end
      @first = @first.next
    end
    
  end


end