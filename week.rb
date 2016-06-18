require 'sinatra'
get '/' do
@day =Time.now.strftime("%A")

template = Day.new(@day).find_template
erb template
end
class Day < Struct.new(:day)
  WEEKEND =%w(Saturday Sunday)

  def find_template
    if WEEKEND.include?(day)
      :weekend
    else
      :week
    end
  end
end
