require 'sinatra'
require 'haml'

set :haml, :format => :html5 # default Haml format is :xhtml

before do
  cache_control :public, :must_revalidate, :max_age => 60
end

get '/' do
  haml :index
end
