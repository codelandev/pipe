require 'sinatra'
require 'sinatra/asset_pipeline'

class App < Sinatra::Base
  set :assets_precompile, %w(main.js style.css *.png *.jpg *.svg *.eot *.ttf *.woff)
  set :assets_css_compressor, :sass
  set :assets_js_compressor, :uglifier
  register Sinatra::AssetPipeline

  get '/' do
    slim :index
  end
end
