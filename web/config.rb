http_path = "/"
css_dir = "css"
sass_dir = "scss"
images_dir = "img"
javascripts_dir = "include/js"

relative_assets = true

preferred_syntax = :scss

line_comments = false # by Compass.app

output_style = :expanded # by Compass.app

def windows?
  RbConfig::CONFIG['host_os'] =~ /mswin|windows|mingw/i
end
sass_options = { :cache_location => windows? ? 'c:\temp\sass-cache' : '/tmp/.sass-cache/' }