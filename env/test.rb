class Env
  attr_reader :name, :password, :oauth_base, :api_base, :appkey, :secret, :code,:callback;

  def initialize
    @name = "18600160903";
    @password = "welcome7";
    @oauth_base="http://10.1.22.21:8082/oauth2"
    @api_base="http://10.1.22.21:8083"

    @appkey="612356"
    @secret="8dc312b3869672174b64d5903ae6bb9e"
    @callback="http://cl.koudai.com"
    @code="3fa8e5dd0ccd51626673c36b82b45f350001000181"
  end


end
