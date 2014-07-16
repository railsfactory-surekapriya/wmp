require 'sinatra'
require './roman'
require './numbers'
require './spell_digit.rb'
require './days'

get '/one' do
month = params['month'].to_i
day = params['day'].to_i
year = params['year'].to_i
one = File.read('./form1.html')
d = ""
if day !=0 && month !=0 && year !=0
p = Time.new( year , month , day)
d = p.strftime('%A')
m = p.strftime('%B')
a = Tamil_calendar.days1(d.to_s)
end
one = one + m.to_s + "\s" + Numbers.convert(day) + "\s" + year.to_s + "\s" + Roman.convert(year) + "\s" + Spell_digit.convert(year) + d + "\s" + a.to_s
end


  


