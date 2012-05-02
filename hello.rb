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

