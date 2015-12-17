# For all environments, run the following code
configure do
  # Load the following libraries
  require 'sinatra/activerecord'
  require 'sinatra/flash'
  require 'pry'

  # Load all .rb files in the app folder
  Dir[__dir__ + "/../app/**/*.rb"].each do |file|
    require_relative file
  end

  # Declare the location of the views folder
  set :views, 'app/views'
end

configure :production do
 db = URI.parse(ENV['DATABASE_URL'] || 'postgres:///localhost/mydb')

 ActiveRecord::Base.establish_connection(
   :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
   :host     => db.host,
   :username => db.user,
   :password => db.password,
   :database => db.path[1..-1],
   :encoding => 'utf8'
 )
end
