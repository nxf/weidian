class Env
  attr_reader :name, :password, :oauth_base, :api_base, :appkey, :secret, :code, :callback;

  def initialize
    @name = "18600160903";
    @password = "welcome7";
    @oauth_base="http://10.2.8.65:2260/oauth2"
    @api_base="http://10.2.8.65:2250"

    @appkey="617938"
    @secret="262a8e24a213fb13f284354c5703535d"
    @callback="http://api.softbanana.com"
    @code="3fa8e5dd0ccd51626673c36b82b45f350001000181"
  end

end