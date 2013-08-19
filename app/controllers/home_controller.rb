class HomeController < ApplicationController
 
  # hello.html.erb will get rendered 
  def hello
    @message = "Hello people! "
  end
end
