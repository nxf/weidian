require 'Net/http'
require 'json'

# ApiBase 类是 Api 类 依赖的工具类，包含向服务端提交内容的post方法和序列化对象的json方法。
# 如果使用者使用了不同的http请求库和json序列化库，可以在这里直接修改self.post方法和self.json方法
#
#
class ApiBase

  @@base = URI("http://api.vdian.com/api")

  # 向服务器提交参数
  def self.post(pub_str,param)
    res = Net::HTTP.post_form(@@base,'public' => pub_str,'param' => json(param))
    return res.body;
  end

  def self.json(obj)
    JSON.generate(obj);
  end
end