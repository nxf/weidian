require 'Net/http'
require 'json'

class Api

  @@base = URI("http://api.vdian.com/api")

  def initialize(accessToken,version,format)
    @accessToken = accessToken;
    @version = version;
    @format = format;
  end

  def execute(param,pub)
    accessToken = @accessToken;
    version = @version;
    format = @format;

    if(pub)
      accessToken = pub[:accessToken] if pub.has_key?(:accessToken);
      version = pub[:version] if pub.has_key?(:version);
      format = pub[:format] if pub.has_key?(:format);
    end

    pub_str = %Q/{"method":"#{pub[:method]}","access_token":"#{accessToken}","version":"#{version}","format":"#{format}"}/;
    res = Net::HTTP.post_form(@@base,'public' => pub_str,'param' => JSON.generate(param))
    puts res.body

  end

end


api = Api.new("6bc23eed2ec588edd50cdd8110f196120002518540","1.0","json")
api.execute({itemid:"1146288080"},{:method => "vdian.item.get"})