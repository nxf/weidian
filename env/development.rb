class Env
  attr_reader :name, :password, :oauth_base, :api_base, :appkey, :secret, :code,:callback;

  def initialize
    @name = "18600160903";
    @password = "welcome7";
    @oauth_base="http://localhost:8082/oauth2"
    @api_base="http://localhost:8083"
    @api_media="http://localhost:8083/media/upload"

    @appkey="617938"
    @secret="262a8e24a213fb13f284354c5703535d"
    @callback="http://api.softbanana.com"
    @code="14704d122e28eeb2da1b18a40fc24eba"
  end


end
