class TextMessage

  #attr_accessor :message
  #
  #def initialize(message)
  #  @message = message
  #end

  def text_message(message)
    login_response = ''

    url = URI.parse('https://www.google.com/accounts/ClientLogin')
    login_req = Net::HTTP::Post.new(url.path)
    login_req.form_data = {'accountType' => 'GOOGLE', 'Email' => 'twenty4play@gmail.com', 'Passwd' => 'judamang', 'service' => 'grandcentral', 'source' => 'tiare.herokuapp.com'}
    login_con = Net::HTTP.new(url.host, url.port)
    login_con.use_ssl = true
    login_con.start { |http| login_response = http.request(login_req) }

    url = URI.parse('https://www.google.com/voice/sms/send/')
    req = Net::HTTP::Post.new(url.path, {'Content-type' => 'application/x-www-form-urlencoded', 'Authorization' => 'GoogleLogin auth='+login_response.body.match("Auth\=(.*)")[0].gsub("Auth=", "")})
    # We're sending the auth token back to google
    req.form_data = {'id' => '', 'phoneNumber' => '3036671970', 'text' => message, '_rnr_se' => 'BJQn6mVVF+L/PIvaPaaBWpGXTBY='}
    con = Net::HTTP.new(url.host, url.port)
    con.use_ssl = true
    con.start { |http| response = http.request(req) }
  end

end
