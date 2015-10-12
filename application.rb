load("oauth.rb")
load("product.rb")


@env = Env.new
@oauth = OAuth.new @env


def authorize
  @oauth.authorize
end

def accessToken(token)
  result = @oauth.accessToken token
  puts result;
  result
end

def item(id,accessToken)
  product = Product.new
  product.item(id,accessToken);
end

def uploadPic(file,accessToken)
  product = Product.new
  product.uploadPic(file,accessToken)
end



#ca15dba0ab531aa060ad925879115eb00002518540