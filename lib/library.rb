require 'date'
class CalendarOrigin

    
#https://qiita.com/nnabeyang/items/8b54a28551983d9cdb32
  def initialize(y,m)
    @first = Date.new(y,m,1)
    @last = Date.new(y,m,-1)
  end

  def disp
    @calendar = @first.strftime( "%Y年 %m月 %d日") + \n
    @calendar +=  "日　月　火　水　木　金　土" + \r

    if @first.wday != 0 then
      for x in 1..@first.wday do
        @calendar += "   "
      end
    end

    for d in 1..@last.day do
      if @first.wday == 6 then
        @calendar += sprintf("%2s ",d) + "\n"
      else
        @calendar += sprintf("%2s ",d)
      end
      @first = @first.next
    end
    puts @calendar
  end
end

  