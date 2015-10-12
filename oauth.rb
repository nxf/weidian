require 'watir'
require 'net/http'
require 'json'
load 'env/env.rb'


class OAuth

  def initialize(env)
    @name = env.name;
    @password = env.password;
    @base = env.oauth_base;
    @appkey = env.appkey;
    @secret = env.secret;
    @callback = env.callback
  end

  def authorize()
    @b = Watir::Browser.new :chrome
    url = "#{@base}/authorize?appkey=#{@appkey}&redirect_uri=#{@callback}&state=a&response_type=code";
    @b.goto url;
    puts url

    @b.text_field(name: 'phone').set(@name);
    @b.text_field(name: 'password').set(@password);
    @b.span(:class => 'btns').click

    @b.input(:class => 'WD_btn_link').click
  end

  def accessToken(code)
    url = URI("#{@base}/access_token?appkey=#{@appkey}&secret=#{@secret}&code=#{code}&grant_type=authorization_code")
    puts url
    result = Net::HTTP.get(url)
    hash = JSON.parse(result);
  end



  def close
    @b.close
  end

end


# env = Env.new
# puts env.name

# oauth = OAuth.new env

#
# oauth.authorize appkey

#hash = oauth.accessToken(env.code)
#puts hash["result"]["access_token"]
