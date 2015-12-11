require "sinatra"
require_relative "config/application"

get "/" do
  redirect "/projects"
end

get "/projects" do
  @projects = Project.all
  erb :'index'
end

get "/projects/:id" do
  @project = Project.find(params[:id])
  erb :'show'
end
