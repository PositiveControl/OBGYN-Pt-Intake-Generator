require 'sinatra/base'
require 'patient'

class App < Sinatra::Application

  get '/' do
    erb :index
  end

  post '/patients' do
    patient = Patient.new(params[:patient])
    erb :patients, locals: {patient: patient}
  end

end