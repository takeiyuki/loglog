class IndexController < ApplicationController
  def index
      user = User.new
      @msg = user.hello
  end

  def show
      
  end

  def login
      user = User.new

      user_info = user.login('y.takei@nutex.jp', '')
      if (user_info)
          @msg = 'Login Done'
      else
          @msg = 'Login Failed'
      end
  end
end
