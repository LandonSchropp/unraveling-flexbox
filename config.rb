activate :automatic_image_sizes

activate :autoprefixer do |config|
  config.browsers = ['last 2 versions', 'Explorer >= 10', 'Android >= 4.1', 'Safari >= 7',
    'iOS >= 7']
end

configure :development do
  activate :livereload
end

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

configure :build do
  activate :asset_hash
end
