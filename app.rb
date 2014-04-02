require 'sinatra/base'
require 'patient'

class App < Sinatra::Application

  helpers do

    def partial template
      erb template, :layout => false
    end

  end

  get '/' do
    erb :index
  end

  post '/patients' do
    patient = Patient.new(params[:patient])
    erb :patients, locals: {patient: patient}
  end

end