require "sinatra"


get "/" do
  haml :index
end

get "/kitap/:n" do |number|
	haml :"kitap_#{number}"
end

get "/k_search" do
  @kelime = params[:search_str]
  @start = params[:start]
  @end = params[:end]
  haml :k_search
end

get "/email/:name" do |isim|
  haml :email, :locals => {:isim => isim}
end

get "/:sayfa" do |s|
  haml :"#{s}"
end
