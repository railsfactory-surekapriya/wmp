require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require_relative './todolist.rb'

configure do
  set :views, "#{File.dirname(__FILE__)}/views"
end

enable :sessions
set :session_secret, 'randomsecretkey112324'
t = Todolist.new("file.txt")
# root page
get '/page' do 
 @time =  Time.now
erb :index
end




#Todolist
get '/erb_example' do
 erb :example
end  


#adding

get '/add/1' do
 erb :add

end
post '/add/1' do

items = params['items']
t.add(items)
t.save
t.list
erb :add
end




#pending

get '/pending' do

@str = []
@str = t.pending

erb :pending
end



#mark as done

get '/mark_done' do
erb :mark_done

end
post '/mark_done' do
num = params[:items].to_i
t.complete(num)
t.save

erb :mark_done
end




#completed

get '/completed' do
@str1 = []
@str1 = t.completed
erb :completed
end
post '/completed' do
num = params[:items]
t.completed(num)
t.save
erb :completed

end




#delete

get '/delete' do
 erb :delete

end

post '/delete' do
num1 = params['delete'].to_i
 t.delete(num1)
t.save
erb :delete
end




#loginpage
get '/login' do
erb :login
end

post '/login' do
session[:username]= params[:username]




# erb :login
redirect "/member"
end




#logout page

get '/logout' do
session.clear
@message= "you have been logged out"
erb :logout
end  




#memberpage
get "/member" do
  if session[:username]
    erb :member
  else
  redirect "/login"
end
end
  
 
