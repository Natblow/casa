def stubbed_requests
  # twilio_service_spec
  stub_request(:post, "https://api.twilio.com/2010-04-01/Accounts/articuno34/Messages.json")
    .with(
      body: {From: "+15555555555", Body: "Execute Order 66 - https://42ni.short.gy/jzTwdF", To: "+12222222222"},
      headers: {
        "Content-Type" => "application/x-www-form-urlencoded",
        "Authorization" => "Basic QWxhZGRpbjpvcGVuIHNlc2FtZQ=="
      }
    )
    .to_return(body: "{\"error_code\":null, \"status\":\"sent\", \"body\":\"Execute Order 66 - https://42ni.short.gy/jzTwdF\"}")
  stub_request(:post, "https://api.short.io/links")
    .with(
      body: {originalURL: "https://www.youtube.com/watch?v=dQw4w9WgXcQ", domain: "42ni.short.gy"}.to_json,
      headers: {
        "Accept" => "application/json",
        "Accept-Encoding" => "gzip;q=1.0,deflate;q=0.6,identity;q=0.3",
        "Authorization" => "1337",
        "Content-Type" => "application/json",
        "User-Agent" => "Ruby"
      }
    )
    .to_return(status: 200, body: "{\"shortURL\":\"https://42ni.short.gy/jzTwdF\"}", headers: {})
  # case_contact_types_reminder_spec
  stub_request(:post, "https://api.twilio.com/2010-04-01/Accounts/articuno34/Messages.json").
    with(
      body: {"Body"=>"It's been 60 days or more since you've reached out to these members of your youth's network:", "From"=>"+15555555555", "To"=>"+12222222222"},
      headers: {
      'Accept'=>'application/json',
      'Accept-Charset'=>'utf-8',
      'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
      'Authorization'=>'Basic QWxhZGRpbjpvcGVuIHNlc2FtZQ==',
      'Content-Type'=>'application/x-www-form-urlencoded',
      'User-Agent'=>'twilio-ruby/5.67.1 (darwin21 x86_64) Ruby/3.1.0'
      }).
    to_return(body: "{\"error_code\":null, \"status\":\"sent\", \"body\":\"It's been 60 days or more since you've reached out to these members of your youth's network:\"}")
  stub_request(:post, "https://api.twilio.com/2010-04-01/Accounts/articuno34/Messages.json").
    with(
      body: {"Body"=>"test", "From"=>"+15555555555", "To"=>"+12222222222"},
      headers: {
      'Accept'=>'application/json',
      'Accept-Charset'=>'utf-8',
      'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
      'Authorization'=>'Basic QWxhZGRpbjpvcGVuIHNlc2FtZQ==',
      'Content-Type'=>'application/x-www-form-urlencoded',
      'User-Agent'=>'twilio-ruby/5.67.1 (darwin21 x86_64) Ruby/3.1.0'
      }).
    to_return(body: "{\"error_code\":null, \"status\":\"sent\", \"body\":\"test\"}")
  stub_request(:post, "https://api.twilio.com/2010-04-01/Accounts/articuno34/Messages.json").
    with(
      body: {"Body"=>"If you have made contact with them in the past 60 days, remember to log it: [link to create new case contact for assigned case]", "From"=>"+15555555555", "To"=>"+12222222222"},
      headers: {
      'Accept'=>'application/json',
      'Accept-Charset'=>'utf-8',
      'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
      'Authorization'=>'Basic QWxhZGRpbjpvcGVuIHNlc2FtZQ==',
      'Content-Type'=>'application/x-www-form-urlencoded',
      'User-Agent'=>'twilio-ruby/5.67.1 (darwin21 x86_64) Ruby/3.1.0'
      }).
    to_return(body: "{\"error_code\":null, \"status\":\"sent\", \"body\":\"If you have made contact with them in the past 60 days, remember to log it: [link to create new case contact for assigned case]\"}")

end
