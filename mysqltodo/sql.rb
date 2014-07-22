require 'mysql2'
require 'rubygems'
require 'bundler/setup'
require 'sinatra'


client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => 'root') 
configure do
  set :views, "#{File.dirname(__FILE__)}/views"
end

enable :sessions
set :session_secret, 'randomesecretkey112324'

get '/home' do
erb :home
end

get '/show_databases' do               
@tasks = client.query("show databases;")
erb :show_databases
end   



get '/show_tables' do
my_dbase = params["database"]
client2 = Mysql2::Client.new(:host => "localhost", :username => "root", :password => 'root',:database => my_dbase )
@tables= client2.query("show tables;")
 erb :show_tables
end
 

get '/describetable' do
db_table = params["table"]
my_dbase = params["database"]
client3 = Mysql2::Client.new(:host => "localhost", :username => "root", :password => 'root', :database => my_dbase )
@table1 = client3.query("describe #{db_table}")
@table2 = client3.query("select * from #{db_table}")
erb :describetable

end


