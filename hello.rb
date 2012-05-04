require "sinatra"


get "/" do
  haml :dnm
end

get "/kitap/:n" do |number|
	haml :"kitap_#{number}"
end

get "/:sayfa" do |s|
  haml :"#{s}"
end
