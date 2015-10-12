require 'net/http'
require 'net/http/post/multipart'

load 'env/env.rb'

class Product

  TEMP_FILE = "temp.txt"

  def item(id,accessToken)
    env = Env.new
    url = URI.parse(URI.encode("#{env.api_base}/api?param={\"itemid\":#{id}}&public={\"method\":\"vdian.item.get\",\"access_token\":\"#{accessToken}\",\"version\":\"1.0\",\"format\":\"json\"}"));

    puts url
    result = Net::HTTP.get url
    puts result;
  end

  def uploadPic(file,accessToken)
    env = Env.new
    url = URI.parse "#{env.api_media}";
    puts url

    File.open(file) do |jpg|
      parts = {:name => "media",:access_token => "#{accessToken}", :media => UploadIO.new(jpg,"image/jpg","media.jpg")}
      req = Net::HTTP::Post::Multipart.new url.path,
          parts
      # puts req.body_stream.read

      res = Net::HTTP.start(url.host,url.port) do |http|
        r = http.request(req)
        puts r.body
      end
    end

  end
end

