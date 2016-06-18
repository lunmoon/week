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
#   case Time.now.strftime("%A")
#   when "Friday"
#     erb :friday
#  when "Monday"
#   erb :monday
# when "Tuesday"
#   erb :tuesday
# when "Wednesday"
#   redirect to ("https://onet.pl")
# when "Thursday"
#   erb :Thursday
# when "Saturday" || "Sunday"
# @day= Time.now.strftime("%A")
#     erb :weeknd
#
# else
#   "dupa2"
#   "#{Time.now.saturday?}"
# end
