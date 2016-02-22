require "sinatra/reloader" if development?
require "sass/plugin/rack"

Sass::Plugin.options[:style] = :compact
use Sass::Plugin::Rack

register Sinatra::AssetPack
assets do
    js :application, [
        '/js/app.js'
    ]
    css :application, [
        '/bower_components/pure/pure-min.css',
        '/stylesheets/style.css'
    ]
    js_compression :jsmin
    css_compression :simple
end

APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))
APP_NAME = APP_ROOT.basename.to_s

configure do
  set :views, File.join(Sinatra::Application.root, "app", "views")
end

Dir[APP_ROOT.join('app', 'models', '*.rb')].each { |file| require file }
Dir[APP_ROOT.join('app', 'controllers', '*.rb')].each { |file| require file }
Dir[APP_ROOT.join('app', 'helpers', '*.rb')].each { |file| require file }