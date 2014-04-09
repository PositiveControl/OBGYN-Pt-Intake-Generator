class TextMessage

  def text_message(message)
    login_response = ''

    url = URI.parse('https://www.google.com/accounts/ClientLogin')
    login_req = Net::HTTP::Post.new(url.path)
    login_req.form_data = {'accountType' => 'GOOGLE', 'Email' => 'pt.intake.generator@gmail.com', 'Passwd' => 'super easy password', 'service' => 'grandcentral', 'source' => 'tiare.herokuapp.com'}
    login_con = Net::HTTP.new(url.host, url.port)
    login_con.use_ssl = true
    login_con.start { |http| login_response = http.request(login_req) }

    url = URI.parse('https://www.google.com/voice/sms/send/')
    req = Net::HTTP::Post.new(url.path, {'Content-type' => 'application/x-www-form-urlencoded', 'Authorization' => 'GoogleLogin auth='+login_response.body.match("Auth\=(.*)")[0].gsub("Auth=", "")})

    req.form_data = {'id' => '', 'phoneNumber' => '7202893911', 'text' => message, '_rnr_se' => '45rXiQlP071fDsvDOR1ioKhH94s='}
    con = Net::HTTP.new(url.host, url.port)
    con.use_ssl = true
    con.start { |http| response = http.request(req) }
  end

end
