require 'mysql2'
require 'rubygems'
require 'bundler/setup'
require 'sinatra'


client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => 'root') # "Database"
configure do
  set :views, "#{File.dirname(__FILE__)}/views"
end

enable :sessions
set :session_secret, 'randomesecretkey112324'

get '/home' do
erb :home
end

get '/database' do               
@tasks = client.query("show databases;")
erb:show_databases
end   

=begin
get '/show_database' do  
my_dbase = params["database"]             
@tasks = client.query("show databases;")
erb:show_databases
end   
=end


get '/show_tables' do
my_dbase = params["database"]
client2 = Mysql2::Client.new(:host => "localhost", :username => "root", :password => 'root',:database => my_dbase )


@tables= client2.query("show tables;")
 erb :show_tables

end



