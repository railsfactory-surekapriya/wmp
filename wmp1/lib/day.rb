require 'sinatra'

require './roman.rb'
require'./numbers.rb'
i = Roman.new()
j = Numbers.new()

get '/one' do
day = params['day']
month = params['month']
year = params['year']
one = File.read('./form1.html')
str = month.to_s + " " + day.to_s + " " + year.to_s 
s = i.convert(year)
r = j.convert(day)
one = one + " " + r.to_s + " " + month.to_s + " " + s.to_s + " "

end



  


