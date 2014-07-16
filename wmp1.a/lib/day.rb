require 'sinatra'
require './roman'
require './numbers'
require './spell_digit.rb'
require './days'

get '/one' do
month = params['month'].to_i
date = params['date'].to_i
year = params['year'].to_i
one = File.read('./form1.html')  


s = Roman.convert(year)
d = Numbers.convert(date)
spell = Spell_digit.convert(year)
x = ""
if month!=0 && date!=0 && year!=0
t = Time.new(year,month,date)
x = t.strftime('%A')
a = Days.convert(x)
end
one = one + d.to_s + "\s" + month.to_s + "\s" + year.to_s + "\s" + s + "\s" + spell + "\s"
one = one + x + "\n" + a.to_s

end






  


