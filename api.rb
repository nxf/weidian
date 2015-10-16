require './api_base'

class Api

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

    puts ApiBase.json(param)
    res = ApiBase.post(pub_str,param)
    puts res
  end

  def method_missing(m, *args, &block)
    method_name = m.to_s[8..-1].gsub(/_/,".")
    execute(args[0],{:method => method_name})
    puts "#{method_name} with #{args.inspect} and #{block}"
  end
end
