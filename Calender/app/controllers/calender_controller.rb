class CalenderController < ApplicationController
  require 'date'

  def index
    @dateToday = Date.today
    @timeOfNow = Time.now
    @cal = "calendar test"
    #@cal = "<td><span style=\"color:#ff0000;">"#{@dateToday}</span></td>"

    
  end

end
