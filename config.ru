
require "./hello"
require 'coderay'  # get one of supported highlighters
require 'rack/codehighlighter'
require 'haml-coderay'

use Rack::Codehighlighter, :coderay, :element => "pre", :pattern => /\A,,,(\w+)\s*\n/

Encoding.default_external = 'utf-8'

run Sinatra::Application

