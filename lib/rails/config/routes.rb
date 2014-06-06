Rails.application.routes.draw do
  if Rails.version >= '4.0.0'
    match WebsocketRails.config.base_path, :to => WebsocketRails::ConnectionManager.new, via: [:get, :post]
  else
    match WebsocketRails.config.base_path, :to => WebsocketRails::ConnectionManager.new
  end
end
