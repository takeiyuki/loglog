class UserController < ApplicationController
  def signup
      user = User.new
      user.create('y.takei@nutex.jp', '')
      @msg = 'Create Done!';
  end
end
