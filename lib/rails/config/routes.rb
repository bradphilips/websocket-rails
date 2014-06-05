Rails.application.routes.draw do
  load "#{Rails.root}/config/initializers/websocket_rails.rb"

  if Rails.version >= '4.0.0'
    match WebsocketRails.config.base_path, :to => WebsocketRails::ConnectionManager.new, via: [:get, :post]
  else
    match WebsocketRails.config.base_path, :to => WebsocketRails::ConnectionManager.new
  end
end
