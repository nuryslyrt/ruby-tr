require "sinatra"


get "/" do
  haml :dnm
  #haml "Merhaba Dünya"
  #puts RUBY_VERSION,  RUBY_PLATFORM,  Encoding.default_external,  Encoding.default_internal
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
    %link(rel="stylesheet" href="coderay1.css")
  %body  
    = yield
