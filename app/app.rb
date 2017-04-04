require 'sinatra/base'
require_relative 'models/link'
ENV['RACK_ENV'] ||= 'development'
# Bundler.require(:default, RACK_ENV)
# APPROOT = File.expandpath File.join(".", "app", "app.rb")
# RACKENV = ENV['RACKENV']

class BookmarkManager < Sinatra::Base
  get '/links' do
    @links = Link.all
    erb(:'links/index')
  end

  get '/links/new' do
    erb(:'links/new')
  end

  post '/links' do
    Link.create(url: params[:url], title: params[:title])
    redirect '/links'
  end
end
