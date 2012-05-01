#encoding: utf-8
require "sinatra"

get "/" do
  haml :dnm 
end

get "/code" do
	"<pre>,,,ruby
		puts \"hello world\"
	</pre>"
end

__END__

@@layout

!!!  
%html  
  %head  
    %title Ruby Türkiye  
    %meta{:"http-equiv" => "Content-Type", :content => "text/html; charset=utf-8" } 
  %body  
    %link(rel="stylesheet" href="coderay.css")
    = yield
