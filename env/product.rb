class Env
  attr_reader :name, :password, :oauth_base, :api_base, :appkey, :secret, :code, :callback, :api_media;

  def initialize
    @name = "18600160903";
    @password = "welcome7";
    @oauth_base="https://api.vdian.com/oauth2"
    @api_base="https://api.vdian.com"
    @api_media="http://api.vdian.com/media/upload"

    @appkey="634464"
    @secret="bb6b7356c8876bbb4f7c90a8809c5fbb"
    @callback="http://cl.koudai.com"
    @code="072d6a16c27e91ef8ddfd25dacd818dc"
  end

end