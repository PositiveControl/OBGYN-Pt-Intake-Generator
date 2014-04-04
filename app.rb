require 'sinatra/base'
require 'patient'
require 'send_text'
require 'net/http'
require 'net/https'
require 'uri'

class App < Sinatra::Application

  helpers do

    def partial template
      erb template, :layout => false
    end

  end

  get '/' do
    erb :index, :layout => true
  end

  post '/patients' do
    patient = Patient.new(params[:patient])
    erb :patients, locals: {patient: patient}
  end

  post '/send-text' do
    sender = TextMessage.new
    sender.text_message(params[:pt_results])
    logger.info params.inspect
    redirect '/'
  end
end