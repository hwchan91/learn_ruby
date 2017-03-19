class Timer
  #write your code here
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end

  def time_string
    hour = 0
    minute = 0
    second = 0
    if (@seconds > 3600)
      hour = @seconds / (3600)
      minute = (@seconds - hour * 3600 ) /60
      second = @seconds - hour * 3600 - minute * 60
    elsif (@seconds > 60)
      minute = @seconds / 60
      second = @seconds - minute * 60
    else
      second = @seconds
    end

    if hour < 10
      hour_string = "0#{hour}"
    else
      hour_string = "#{hour}"
    end

    if minute < 10
      minute_string = "0#{minute}"
    else
      minute_string = "#{mintue}"
    end

    if second < 10
      second_string = "0#{second}"
    else
      second_string = "#{second}"
    end

    "#{hour_string}:#{minute_string}:#{second_string}"
  end

end
