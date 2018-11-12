require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :'/new'
    end

    get '/team' do 
        erb :'/team'
    end

    post '/teams' do
        @team = Team.new(params[:team][:name], params[:team][:motto])

        params[:team][:heroes].each do |hero_data|        
            h = Hero.new(hero_data[:name], hero_data[:power], hero_data[:biography])
            @team.heroes << h
        end

        erb :'/team'
    end

end