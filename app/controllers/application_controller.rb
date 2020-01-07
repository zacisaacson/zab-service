require 'faraday'

class ApplicationController < Sinatra::Base
  configure do
    set :views, "app/views"
    set :public_dir, "public"
  end

  get '/api/v1/accounts/:token' do
    Faraday.get("https://api.youneedabudget.com/v1/budgets/default/accounts?access_token=#{params[:token]}").body
  end
end
