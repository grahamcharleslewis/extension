require 'middleman-core'

class MyExtension < ::Middleman::Extension
  # expose_to_config :create_header_links
  option :header_links, [], 'The new set of header links for the layout'
  option :layout, '', 'The layout you want to change the headers for'

  def initialize(app, options_hash={}, &block)
    @app = app
    super
  end

  # def create_header_links
  #   puts "Hello from config..."
  # end 
  
  # def before_configuration
  #   puts @app.config[:url]
  #   puts "Updating URL..."
  #   @app.config[:url] = "test"
  #   puts @app.config[:url]
  #   puts "Before configuration"
  # end 

  def after_configuration
    puts @app.config[:url]
    puts options
    puts "Updating URL..."
    @app.config[:url] = options.header_links
    puts @app.config[:url]
    puts "After configuration"
  end
end
