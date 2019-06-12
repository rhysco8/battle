require 'sinatra/base'

class BattleApp < Sinatra::Base

  get '/' do
    "testing infrastructure working!"
  end

  run! if app_file == $0
end
